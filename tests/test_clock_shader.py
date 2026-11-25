from pathlib import Path
import hashlib, importlib.util, sys, unittest

ROOT=Path(__file__).resolve().parent.parent
sys.path.insert(0,str(ROOT/'tools'))
import make_clock_shader as shader

class ClockShaderTests(unittest.TestCase):
    def test_sample_locked(self):
        self.assertEqual(hashlib.sha256(shader.SOURCE.read_bytes()).hexdigest(),shader.SOURCE_SHA256)
    def test_exact_one_gate_and_entrypoints(self):
        src=shader.SOURCE.read_text(); out=shader.render().decode()
        self.assertEqual(src.count(shader.BEFORE),1)
        self.assertEqual(out,src.replace(shader.BEFORE,shader.AFTER).replace('liquidGlassVertex(', 'ningClockVertex(').replace('liquidGlassFragment(', 'ningClockFragment('))
        self.assertIn('if (!(u.useGlyphMask > 1.5 && u.useGlyphMask <= 2.5)) return float4(0.0);',out)
        fragment=out.index('fragment float4 ningClockFragment(')
        self.assertLess(out.index('if (!(u.useGlyphMask',fragment), out.index('float2 localUV',fragment))
        self.assertEqual(out.count('fragment float4 ningClockFragment('),1)
        self.assertEqual(out.count('vertex LGVertexOut ningClockVertex('),1)
    def test_generated_shader_matches(self):
        self.assertEqual((ROOT/'renderer'/'ClockOnly.metal').read_bytes(),shader.render())

if __name__=='__main__': unittest.main()
