
#include <metal_stdlib>
using namespace metal;

struct Uniforms {
    float2 resolution;
    float2 outputResolution;
    float2 screenResolution;
    float2 cardOrigin;
    float2 wallpaperResolution;
    float2 lensOrigin;
    float  radius;
    float  bezelWidth;
    float  glassThickness;
    float  refractionScale;
    float  refractiveIndex;
    float2 wallpaperOrigin;
    float2 samplingTransformX;
    float2 samplingTransformY;
    float2 samplingTransformOffset;
    float  samplingOrientation;
    float  backdropZoom;
    float  shapeScale;
    float2 shapeOrigin;
    float2 shapeSize;
    float  useGlyphMask;
    float  dispersionStrength;
    float4 tintColor;
    float2 validMaxUV;
    float clockOrientation;
    float coverSideRefraction;
    float captureAligned;
};

float quartzGlassEdgeProfile(float distanceFromEdge,
                             float refractionHeight) {
    float t = saturate(distanceFromEdge / max(refractionHeight, 0.001));
    return 1.0 - sqrt(t * (2.0 - t));
}

float clockConvexSquircle(float ratio) {
    return pow(1.0 - pow(1.0 - ratio, 4.0), 0.25);
}

float clockRawRefraction(float ratio, float thickness, float bezel, float eta) {
    float position = clamp(ratio, 0.05, 0.95);
    float height = clockConvexSquircle(position);
    float slope = (clockConvexSquircle(position + 0.001) - height) / 0.001;
    float2 normal = float2(-slope, -1.0) / sqrt(slope * slope + 1.0);
    float cosine = -normal.y;
    float discriminant = 1.0 - eta * eta * (1.0 - cosine * cosine);
    if (discriminant < 0.0) return 0.0;
    float projection = eta * cosine + sqrt(discriminant);
    float2 ray = float2(-projection * normal.x, eta - projection * normal.y);
    if (length(ray) < 0.0001 || abs(ray.y) < 0.0001) return 0.0;
    return ray.x * (height * bezel + thickness) / ray.y;
}

float clockSquircleEdgeProfile(float ratio, float thickness, float bezel, float eta) {
    float peak = clockRawRefraction(0.05, thickness, bezel, eta);
    if (abs(peak) < 0.0001) return 0.0;
    return clockRawRefraction(ratio, thickness, bezel, eta) / peak
         * (1.0 - smoothstep(0.0, 1.0, ratio));
}

float bottomRoundedBoxDistance(float2 point, float2 size, float radius) {
    float2 halfSize = size * 0.5;
    float2 centered = point - halfSize;
    float selectedRadius = centered.y > 0.0 ? radius : 0.0;
    float2 q = abs(centered) - halfSize + selectedRadius;
    return min(max(q.x, q.y), 0.0)
         + length(max(q, float2(0.0))) - selectedRadius;
}

float2 backdropSampleUV(float2 capturePx,
                        float2 logicalPx,
                        float2 displacementPx,
                        bool isCoverSheet,
                        constant Uniforms &u,
                        float zoomMix)
{
    float2 sampleUV;
    if (isCoverSheet) {
        sampleUV = (capturePx + displacementPx) / u.resolution;
    } else {
        float2 screenPx = u.cardOrigin + logicalPx + displacementPx;
        float2 mapped   = u.samplingTransformOffset
                        + screenPx.x * u.samplingTransformX
                        + screenPx.y * u.samplingTransformY;
        float2 imgPx    = mapped - u.wallpaperOrigin;
        sampleUV = imgPx / u.wallpaperResolution;

        int ori = int(round(u.samplingOrientation));
        if      (ori == 2) sampleUV = float2(1.0 - sampleUV.x, 1.0 - sampleUV.y);
        else if (ori == 3) sampleUV = float2(1.0 - sampleUV.y,       sampleUV.x);
        else if (ori == 4) sampleUV = float2(      sampleUV.y,  1.0 - sampleUV.x);
    }

    float zoom = max(u.backdropZoom, 0.01);
    if (u.shapeSize.x > 0.5 && u.shapeSize.y > 0.5) {
        float eased = mix(1.0, zoom, clamp(zoomMix, 0.0, 1.0));
        float2 centre = (u.shapeOrigin + u.shapeSize * 0.5) / u.resolution;
        sampleUV.y = centre.y + (sampleUV.y - centre.y) / eased;
    } else if (clamp(u.shapeScale, 0.05, 1.0) < 0.999) {
        sampleUV.y = 0.5 + (sampleUV.y - 0.5) / zoom;
    } else {
        sampleUV = float2(0.5) + (sampleUV - float2(0.5)) / zoom;
    }
    // never sample beyond the part of the capture that actually exists on screen
    return clamp(sampleUV, float2(0.0), u.validMaxUV);
}

float4 liquidGlassPixel(texture2d<float, access::sample> src,
                        texture2d<float, access::sample> glyphField,
                        constant Uniforms &u, float2 localUV)
{
    constexpr sampler s(filter::linear, address::clamp_to_edge);

    bool isCoverSheet = u.useGlyphMask < -0.5;
    bool isKeyboard = u.useGlyphMask > 0.0 && u.useGlyphMask < 0.5;
    bool isClock = u.useGlyphMask > 1.5;
    float2 captureUV = localUV;
    float2 capturePx = localUV * u.resolution;
    float2 px = capturePx;
    float fw = u.resolution.x, fh = u.resolution.y;
    float coverOrientation = isCoverSheet ? -u.useGlyphMask : 0.0;
    if (isCoverSheet && coverOrientation == 2.0) {

        px = float2(u.resolution.x - capturePx.x,
                    u.resolution.y - capturePx.y);
    } else if (isCoverSheet && coverOrientation == 3.0) {

        px = float2(capturePx.y, u.resolution.x - capturePx.x);
        fw = u.resolution.y;
        fh = u.resolution.x;
    } else if (isCoverSheet && coverOrientation == 4.0) {

        px = float2(u.resolution.y - capturePx.y, capturePx.x);
        fw = u.resolution.y;
        fh = u.resolution.x;
    }
    // cock interiors and displaced edges must share the same src mapping when core anim capture/output extents differ
    if (isClock)
        captureUV = backdropSampleUV(capturePx, px, float2(0.0), false, u, 0.0);
    float  R        = u.radius, bezel = u.bezelWidth;
    float  eta      = 1.0 / u.refractiveIndex;
    float  shortest = min(fw, fh);

    float signedDistance;
    float distFromSide;
    float2 dir;
    float edgeOpacity;
    bool subShape = false;
    float cornerBlend = 0.0;
    if (isClock) {
        float2 fieldSize = all(u.shapeSize > float2(0.5)) ? u.shapeSize : u.resolution;
        float2 fieldUV = (capturePx - u.shapeOrigin) / fieldSize;
        if (u.clockOrientation == 2.0) fieldUV = 1.0 - fieldUV;
        else if (u.clockOrientation == 3.0) fieldUV = float2(fieldUV.y, 1.0 - fieldUV.x);
        else if (u.clockOrientation == 4.0) fieldUV = float2(1.0 - fieldUV.y, fieldUV.x);
        if (u.clockOrientation >= 3.0) fieldSize = fieldSize.yx;
        if (any(fieldUV < float2(0.0)) || any(fieldUV >= float2(1.0)))
            return float4(src.sample(s, captureUV).rgb, 1.0);
        float distance = glyphField.sample(s, fieldUV).r;
        if (!isfinite(distance)) return float4(0.0);
        float pixelsPerPoint = min(fieldSize.x / u.lensOrigin.x, fieldSize.y / u.lensOrigin.y);
        signedDistance = distance * pixelsPerPoint;
        edgeOpacity = 1.0;
        float2 texel = 1.0 / float2(glyphField.get_width(), glyphField.get_height());
        float2 gradient = float2(
            glyphField.sample(s, fieldUV + float2(texel.x, 0)).r - glyphField.sample(s, fieldUV - float2(texel.x, 0)).r,
            glyphField.sample(s, fieldUV + float2(0, texel.y)).r - glyphField.sample(s, fieldUV - float2(0, texel.y)).r);
        gradient /= max(texel * u.lensOrigin, float2(0.001));
        float magnitude = length(gradient);
        dir = magnitude > 0.001 ? gradient / magnitude : float2(0);
        if (bezel > 0.001 && abs(signedDistance) < bezel && magnitude > 0.001) {
            float2 inwardUV = fieldUV - dir * (signedDistance + bezel) / fieldSize;
            float opposingDistance = glyphField.sample(s, inwardUV).r * pixelsPerPoint;
            bezel = clamp(0.5 * (bezel - opposingDistance), 0.0, bezel);
        }
        distFromSide = abs(signedDistance);
        R = 0.0;
    } else {
        R = clamp(R, 0.0, shortest * 0.5);

        float shapeScale = clamp(u.shapeScale, 0.05, 1.0);
        float2 shapeInset = float2(0.0);
        if (u.shapeSize.x > 0.5 && u.shapeSize.y > 0.5) {
            subShape = true;
            shapeInset = u.shapeOrigin;
            fw = u.shapeSize.x;
            fh = u.shapeSize.y;
            shortest = min(fw, fh);
            R = clamp(R, 0.0, shortest * 0.5);
        } else if (shapeScale < 0.999) {
            subShape = true;
            shapeInset = float2(fw, fh) * (1.0 - shapeScale) * 0.5;
            fw *= shapeScale;
            fh *= shapeScale;
            shortest = min(fw, fh);
            R = clamp(R, 0.0, shortest * 0.5);
        }

        float2 lensPx = px - (isCoverSheet ? u.lensOrigin : shapeInset);
        if (isKeyboard) {
            fh += max(R, bezel);
            shortest = min(fw, fh);
        }
        float2 halfSize = float2(fw, fh) * 0.5;
        float2 p = lensPx - halfSize;
        float2 core;
        cornerBlend = 0.0;
        if (isCoverSheet) {

            R = min(R, shortest * 0.5);
            core = halfSize;
            float2 q = abs(p) - max(halfSize - float2(R), float2(0.0));
            cornerBlend = p.y > 0.0
                ? saturate(min(q.x, q.y) / max(R, 0.001)) : 0.0;
            signedDistance = bottomRoundedBoxDistance(
                lensPx, float2(fw, fh), R);
        } else if (R >= shortest * 0.49 || R < 0.5) {
            core = max(halfSize - float2(R), float2(0.0));
            float2 q = abs(p) - core;
            signedDistance = length(max(q, float2(0.0)))
                           + min(max(q.x, q.y), 0.0) - R;
            cornerBlend = saturate(min(q.x, q.y) / max(R, 0.001));
        } else {
            constexpr float continuousCornerExtent = 1.528;
            float2 extent = min(float2(R * continuousCornerExtent), halfSize);
            core = max(halfSize - extent, float2(0.0));
            float2 q = abs(p) - core;
            float2 corner = max(q, float2(0.0));
            float2 normalized = corner / max(extent, float2(0.001));
            float superLength = pow(pow(normalized.x, 4.0) +
                                    pow(normalized.y, 4.0), 0.25);
            if (q.x <= 0.0 && q.y <= 0.0) {

                signedDistance = -min(halfSize.x - abs(p.x),
                                      halfSize.y - abs(p.y));
            } else {
                signedDistance = (superLength - 1.0) * min(extent.x, extent.y);
            }
            cornerBlend = saturate(min(q.x, q.y) /
                                   max(min(extent.x, extent.y), 0.001));
        }
        if (signedDistance > (subShape ? 0.0 : 1.0)) {
            return subShape ? float4(0.0) : src.sample(s, captureUV);
        }

        distFromSide = max(0.0, -signedDistance);
        float2 cornerDelta = max(abs(p) - core, float2(0.0));
        float2 normalDelta;
        if (isCoverSheet) {
            float2 size = float2(fw, fh);
            float dx = bottomRoundedBoxDistance(
                           lensPx + float2(1.0, 0.0), size, R)
                     - bottomRoundedBoxDistance(
                           lensPx - float2(1.0, 0.0), size, R);
            float dy = bottomRoundedBoxDistance(
                           lensPx + float2(0.0, 1.0), size, R)
                     - bottomRoundedBoxDistance(
                           lensPx - float2(0.0, 1.0), size, R);
            normalDelta = float2(dx, dy);
        } else if (R < shortest * 0.49 && R >= 0.5 &&
            cornerDelta.x > 0.0 && cornerDelta.y > 0.0) {
            float2 t = cornerDelta / max(cornerDelta.x + cornerDelta.y, 0.0001);
            normalDelta = sign(p) * t;
        } else {
            float2 nearestCore = clamp(p, -core, core);
            normalDelta = p - nearestCore;
        }
        float normalLength = length(normalDelta);
        if (normalLength > 0.001) {
            dir = normalDelta / normalLength;
        } else {
            float dL = lensPx.x, dR = fw - lensPx.x;
            float dT = lensPx.y, dB = fh - lensPx.y;
            float dm = min(min(dL, dR), min(dT, dB));
            dir = float2((dL < dR && dL == dm) ? -1.0 : (dR <= dL && dR == dm) ?  1.0 : 0.0,
                         (dT < dB && dT == dm) ? -1.0 : (dB <= dT && dB == dm) ?  1.0 : 0.0);
        }
        edgeOpacity = subShape ? 1.0
                               : clamp(1.0 - max(0.0, signedDistance), 0.0, 1.0);
    }

    if (u.useGlyphMask < 0.5 && !isKeyboard &&
        R >= 0.5 && bezel > R) {
        float cornerScale = R >= shortest * 0.49 ? R
                                                 : min(R * 1.528, shortest * 0.5);
        float taper = cornerBlend * cornerBlend * (3.0 - 2.0 * cornerBlend);
        bezel = mix(bezel, min(bezel, cornerScale), taper);
    }

    if (u.refractionScale < 0.0) {
        if (u.refractionScale < -2.9) {
            float2 centre = subShape
                ? (u.shapeOrigin + u.shapeSize * 0.5) / u.resolution : float2(0.5);
            float2 zoomUV = captureUV;
            zoomUV.y = centre.y + (zoomUV.y - centre.y) / max(u.backdropZoom, 0.01);
            float blur = max(u.dispersionStrength, 0.0);
            if (blur > 0.01) {
                float4 color = float4(0.0);
                float total = 0.0;
                for (int y = -2; y <= 2; ++y) {
                    for (int x = -2; x <= 2; ++x) {
                        float weight = exp(-0.5 * float(x*x + y*y));
                        float2 uv = zoomUV + float2(x, y) * (blur * 0.5) / u.resolution;
                        color += src.sample(s, clamp(uv, float2(0.0), u.validMaxUV)) * weight;
                        total += weight;
                    }
                }
                return color / total;
            }
            return src.sample(s, clamp(zoomUV, float2(0.0), u.validMaxUV));
        }
        float top = subShape ? u.shapeOrigin.y : 0.0;
        float height = subShape ? u.shapeSize.y : u.resolution.y;
        float verticalDistance = min(px.y - top, top + height - px.y);
        float zoomSpan = height * (u.refractionScale < -1.5
            ? clamp(-u.refractionScale - 2.0, 0.3, 0.45) : 0.3);
        if (zoomSpan <= 0.001 || verticalDistance >= zoomSpan)
            return src.sample(s, captureUV);
        float zoomMix = clamp(1.0 - verticalDistance / zoomSpan, 0.0, 1.0);
        zoomMix = zoomMix * zoomMix * (3.0 - 2.0 * zoomMix);
        float2 zoomUV = backdropSampleUV(capturePx, px, float2(0.0), false, u, zoomMix);
        return src.sample(s, zoomUV);
    }

    if (isCoverSheet && u.coverSideRefraction <= 0.0001) {
        // horizontal-only bezels must not switch to side normals along the box's medial axis
        distFromSide = max(0.0, fh - (px.y - u.lensOrigin.y));
        dir = float2(0.0, 1.0);
    }

    if ((R < shortest * 0.45 || subShape) && distFromSide >= bezel) {
        float4 flat = src.sample(s, captureUV);
        flat.rgb = mix(flat.rgb, u.tintColor.rgb, u.tintColor.a);
        return flat;
    }

    float normDisp = (distFromSide < bezel) ?
        (isClock ? clockSquircleEdgeProfile(clamp(distFromSide / max(bezel, 0.001), 0.0, 1.0),
                                            u.glassThickness, bezel, eta)
                 : quartzGlassEdgeProfile(distFromSide,
                                           min(max(u.glassThickness, 1.0), bezel))) : 0.0;
    if ((isCoverSheet && dir.y <= -abs(dir.x)) ||
        (isKeyboard && dir.y >= abs(dir.x))) normDisp = 0.0;
    if (isCoverSheet)
        normDisp *= mix(1.0, u.coverSideRefraction, dir.x * dir.x);

    if (!isClock && (R < 0.5 || (isCoverSheet && u.bezelWidth > R)) &&
        bezel > 0.001) {
        float2 inset = isCoverSheet ? u.lensOrigin :
            (u.shapeSize.x > 0.5 && u.shapeSize.y > 0.5 ? u.shapeOrigin :
             (u.resolution - float2(fw, fh)) * 0.5);
        float2 local = px - inset;
        float4 distances = float4(local.x, local.y, fw-local.x, fh-local.y);
        float4 profiles = float4(0.0);
        for (int edge = 0; edge < 4; ++edge) {
            float distance = max(0.0, distances[edge]);
            if (distance < bezel)
                profiles[edge] = quartzGlassEdgeProfile(distance,
                    min(max(u.glassThickness, 1.0), bezel));
        }
        if (isCoverSheet) {
            profiles.y = 0.0;
            profiles.x *= u.coverSideRefraction;
            profiles.z *= u.coverSideRefraction;
        }
        if (isKeyboard) profiles.w = 0.0;
        // independent edge profiles avoid normal discontinuities when the bezel overlaps corners (so you can set bezel>corner radii now)
        float2 displacement = float2(profiles.z-profiles.x, profiles.w-profiles.y);
        normDisp = length(displacement);
        dir = normDisp > 0.0001 ? displacement / normDisp : float2(0.0);
    }

    float2 textureDir = dir;
    if ((isCoverSheet && coverOrientation == 2.0) || (isClock && u.clockOrientation == 2.0)) {

        textureDir = -dir;
    } else if ((isCoverSheet && coverOrientation == 3.0) || (isClock && u.clockOrientation == 3.0)) {

        textureDir = float2(-dir.y, dir.x);
    } else if ((isCoverSheet && coverOrientation == 4.0) || (isClock && u.clockOrientation == 4.0)) {

        textureDir = float2(dir.y, -dir.x);
    }
    float2 dispPx = -textureDir * normDisp * bezel
                  * u.refractionScale * edgeOpacity;
    if (isClock) dispPx *= 1.4;

    float dispersion = clamp(u.dispersionStrength, 0.0, 20.0);
    constexpr float zoomRampSpan = 0.3;
    float zoomMix = bezel > 0.001
        ? clamp((1.0 - distFromSide / bezel) / zoomRampSpan, 0.0, 1.0) : 0.0;
    zoomMix = zoomMix * zoomMix * (3.0 - 2.0 * zoomMix);
    float2 greenUV = backdropSampleUV(capturePx, px, dispPx,
                                      isCoverSheet, u, zoomMix);
    float4 greenSample = src.sample(s, greenUV);

    float4 fallback = float4(0.0);
    bool loadedFallback = false;
    if (greenSample.a < 0.01) {
        fallback = src.sample(s, captureUV);
        loadedFallback = true;
        greenSample = fallback;
    }
    if (greenSample.a < 0.01) return float4(0.0);

    float4 bg = greenSample;
    if (dispersion > 0.001 && dot(dispPx, dispPx) > 0.0001) {
        float2 aberrationPx = -textureDir * normDisp * dispersion * 8.0 * edgeOpacity;
        float3 accumulated = float3(0.0);
        float accumulatedAlpha = 0.0;

        for (int i = 0; i < 3; i++) {
            float weight = 1.0 - float(i) / 3.0;
            float2 uv = backdropSampleUV(capturePx, px,
                                          dispPx + aberrationPx * weight,
                                          isCoverSheet, u, zoomMix);
            float4 sample = src.sample(s, uv);
            if (sample.a < 0.01) {
                if (!loadedFallback) {
                    fallback = src.sample(s, captureUV);
                    loadedFallback = true;
                }
                sample = fallback;
            }
            accumulated.r += sample.r * weight;
            accumulated.g += sample.g * (1.0 - weight);
            accumulatedAlpha += sample.a;
        }

        for (int i = 0; i < 4; i++) {
            float weight = float(i) / 3.0;
            float2 uv = backdropSampleUV(capturePx, px,
                                          dispPx - aberrationPx * weight,
                                          isCoverSheet, u, zoomMix);
            float4 sample = src.sample(s, uv);
            if (sample.a < 0.01) {
                if (!loadedFallback) {
                    fallback = src.sample(s, captureUV);
                    loadedFallback = true;
                }
                sample = fallback;
            }
            accumulated.g += sample.g * (1.0 - weight);
            accumulated.b += sample.b * weight;
            accumulatedAlpha += sample.a;
        }

        bg.rgb = accumulated * float3(0.5, 1.0 / 3.0, 0.5);
        bg.a = accumulatedAlpha / 7.0;
    }

    float3 outRGB = mix(bg.rgb, u.tintColor.rgb, u.tintColor.a);
    if (isClock) {
        return float4(outRGB, 1.0);
    }
    return float4(outRGB, edgeOpacity);
}

struct LGVertexOut {
    float4 position [[position]];
};

vertex LGVertexOut liquidGlassVertex(uint vertexID [[vertex_id]])
{
    constexpr float2 positions[] = {
        float2(-1.0, -1.0), float2(3.0, -1.0), float2(-1.0, 3.0)
    };
    LGVertexOut out;
    out.position = float4(positions[vertexID], 0.0, 1.0);
    return out;
}


fragment float4 liquidGlassFragment(
    LGVertexOut in [[stage_in]],
    texture2d<float, access::sample> src [[texture(0)]],
    texture2d<float, access::sample> glyphField [[texture(1)]],
    constant Uniforms &u [[buffer(0)]])
{
    float2 localUV = in.position.xy / max(u.outputResolution, float2(1.0));
    if (any(localUV < float2(0.0)) || any(localUV >= float2(1.0))) return float4(0.0);
    if (u.useGlyphMask > 2.5) return float4(0.0);
    if (u.useGlyphMask <= 1.5) {
        float2 outputInset = u.captureAligned > 0.5 ? float2(0.0)
            : (u.outputResolution - u.resolution) * 0.5;
        float2 sourcePosition = in.position.xy - outputInset;
        if (any(sourcePosition < float2(0.0)) || any(sourcePosition >= u.resolution))
            return float4(0.0);
        uint2 dimensions(src.get_width(), src.get_height());
        uint2 gid = min(uint2(sourcePosition), dimensions - 1);
        localUV = (float2(gid) + 0.5) / float2(dimensions);
    }
    return liquidGlassPixel(src, glyphField, u, localUV);
}

