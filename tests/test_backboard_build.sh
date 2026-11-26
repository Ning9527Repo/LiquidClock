#!/bin/sh
set -eu
cd "$(dirname "$0")/.."
OUT=evidence/backboard-build
mkdir -p "$OUT"
SDK=${IOS_SDK:-/tmp/sdk/iPhoneOS16.5.sdk}
FLAGS="-target arm64e-apple-ios16.0 -isysroot $SDK -std=c++17 -fblocks -Wall -Wextra -Werror"
for FILE in src/backboard/LACClockBackboard.mm src/backboard/LACClockMetal.mm src/backboard/LACQCScanner.cpp src/backboard/LACClockData.cpp; do
  echo "COMPILE $FILE"
  ARC=""
  case "$FILE" in *.mm) ARC="-fobjc-arc";; esac
  clang++ $FLAGS $ARC -c "$FILE" -o "$OUT/$(basename "$FILE").o"
done
for FILE in field/clock_field_reader.c src/clock/NGClockFieldCodec.c; do
  echo "COMPILE $FILE"
  clang -target arm64e-apple-ios16.0 -isysroot "$SDK" -std=c11 -Wall -Wextra -Werror -c "$FILE" -o "$OUT/$(basename "$FILE").o"
done
echo "PASS strict arm64e object compilation (not a link/Metal/device test)"
