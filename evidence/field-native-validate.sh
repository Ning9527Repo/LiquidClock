#!/bin/sh
# Evidence-only validation recipe; does not modify the unified regression runner.
set -eux
cd "$(dirname "$0")/.."
OUT=/tmp/lac-field-native-final
SDK=/tmp/sdk/iPhoneOS16.5.sdk
mkdir -p "$OUT"
date -u
uname -a
cc --version | head -1
clang --version | head -1
sources() {
    sha256sum src/clock/LACClockSDF.c src/clock/LACClockSDF.h \
        src/clock/LACClockTextField.mm src/clock/LACClockTextField.h \
        src/clock/LACClockFieldPublisher.c src/clock/LACClockFieldPublisher.h \
        tests/clock_sdf_test.c tests/test_sdf_exact.c \
        tests/field_publisher_integration_test.c tests/test_publisher_contract.c \
        tests/test_textfield_native.mm
}
sources > "$OUT/source-before.sha256"
for CC in cc clang; do
    "$CC" -std=c11 -O2 -Wall -Wextra -Werror tests/clock_sdf_test.c src/clock/LACClockSDF.c -lm -o "$OUT/$CC-sdf"
    "$OUT/$CC-sdf"
    "$CC" -std=c11 -O2 -Wall -Wextra -Werror tests/test_sdf_exact.c src/clock/LACClockSDF.c -lm -o "$OUT/$CC-sdf-exact"
    "$OUT/$CC-sdf-exact"
    "$CC" -std=c11 -O2 -Wall -Wextra -Werror -pthread tests/field_publisher_integration_test.c src/clock/LACClockFieldPublisher.c src/clock/LACClockSDF.c src/clock/NGClockFieldCodec.c field/clock_field_reader.c -lm -o "$OUT/$CC-integration"
    "$OUT/$CC-integration"
    "$CC" -std=c11 -O2 -Wall -Wextra -Werror -pthread tests/test_publisher_contract.c src/clock/NGClockFieldCodec.c field/clock_field_reader.c -lm -o "$OUT/$CC-contract"
    "$OUT/$CC-contract"
done
for repeat in 1 2 3; do
    echo "HOST-ONLY publisher repeat $repeat"
    "$OUT/cc-contract"
done
for module in LACClockSDF LACClockFieldPublisher; do
    clang -target arm64e-apple-ios16.0 -isysroot "$SDK" -std=c11 -Wall -Wextra -Werror -fsyntax-only "src/clock/$module.c"
    clang -target arm64e-apple-ios16.0 -isysroot "$SDK" -std=c11 -Wall -Wextra -Werror -c "src/clock/$module.c" -o "$OUT/$module.o"
done
for source in src/clock/LACClockTextField.mm tests/test_textfield_native.mm; do
    name=$(basename "$source" .mm)
    clang -target arm64e-apple-ios16.0 -isysroot "$SDK" -fobjc-arc -std=c++17 -Wall -Wextra -Werror -DLAC_TEXTFIELD_TEST_APP=1 -fsyntax-only "$source"
    clang -target arm64e-apple-ios16.0 -isysroot "$SDK" -fobjc-arc -std=c++17 -Wall -Wextra -Werror -DLAC_TEXTFIELD_TEST_APP=1 -c "$source" -o "$OUT/$name.o"
done
file "$OUT"/*.o
llvm-objdump --macho --private-header "$OUT/LACClockTextField.o"
sources > "$OUT/source-after.sha256"
cmp "$OUT/source-before.sha256" "$OUT/source-after.sha256"
cp "$OUT/source-after.sha256" evidence/field-native-source.sha256
cat evidence/field-native-source.sha256
printf '%s\n' 'PASS final host/compiler matrix; source snapshots unchanged during validation' 'NOT RUN: real UIKit/CoreText native runtime, native visual parity, native performance' 'NOT RUN: ASan/UBSan/TSan (host sanitizer runtimes unavailable)'
