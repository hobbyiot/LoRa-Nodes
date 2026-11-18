#!/bin/sh
# Link the H2S-Dev variant (and optional board definition) (kept in this repo) into the
# pinned Meshtastic firmware tree in ./upstream. Safe to run repeatedly.
set -eu

HERE=$(cd "$(dirname "$0")" && pwd)
UP="$HERE/upstream"
NAME=h2s_dev        # folder name under variant/ and board json name
ARCH=esp32          # H2S-Dev uses a plain ESP32

if [ ! -f "$UP/platformio.ini" ]; then
    echo "upstream/ is empty - run: git submodule update --init --recursive" >&2
    exit 1
fi

# Remove links left over from a previous upstream layout.
for old in "$UP/variants/$NAME" "$UP/variants/$ARCH/$NAME"; do
    [ -L "$old" ] && rm "$old"
done

# Newer firmware groups variants per architecture (variants/esp32/...),
# older releases keep them flat (variants/...).
if [ -d "$UP/variants/$ARCH" ]; then
    VDIR="variants/$ARCH/$NAME"
else
    VDIR="variants/$NAME"
fi

ln -sfn "$HERE/variant/$NAME" "$UP/$VDIR"
echo "linked $VDIR"

# Board definition (optional in general; H2S-Dev ships boards/h2s_dev.json).
[ -L "$UP/boards/$NAME.json" ] && rm "$UP/boards/$NAME.json"
if [ -f "$HERE/boards/$NAME.json" ]; then
    ln -sfn "$HERE/boards/$NAME.json" "$UP/boards/$NAME.json"
    echo "linked boards/$NAME.json"
fi

# Sanity checks against the pinned upstream version.
if ! grep -qF -- "-I $VDIR" "$HERE/variant/$NAME/platformio.ini"; then
    echo "WARNING: variant/$NAME/platformio.ini should contain '-I $VDIR' for this upstream version" >&2
fi
if ! grep -rqs --include='*.ini' '^\[esp32_base\]' "$UP"; then
    echo "WARNING: [esp32_base] not found upstream - check what the official ESP32 variants extend now" >&2
fi

# Keep the links out of 'git status' inside the submodule.
EXCL=$(git -C "$UP" rev-parse --git-path info/exclude)
case "$EXCL" in /*) ;; *) EXCL="$UP/$EXCL" ;; esac
mkdir -p "$(dirname "$EXCL")"
touch "$EXCL"
for p in "/variants/$NAME" "/variants/$ARCH/$NAME" "/boards/$NAME.json"; do
    grep -qxF "$p" "$EXCL" || echo "$p" >> "$EXCL"
done
