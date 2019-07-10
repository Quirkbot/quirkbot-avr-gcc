#/bin/bash

for f in $(find ./darwin-x64 -maxdepth 20 -type l)
do
    SRC="$(dirname $f)/$(readlink "$f")"
    DST="$f"
    echo "$SRC -> $DST"
    rm "$DST"
    cp "$SRC" "$DST"
done

for f in $(find ./linux-ia32 -maxdepth 20 -type l)
do
    SRC="$(dirname $f)/$(readlink "$f")"
    DST="$f"
    echo "$SRC -> $DST"
    rm "$DST"
    cp "$SRC" "$DST"
done

for f in $(find ./linux-x64 -maxdepth 20 -type l)
do
    SRC="$(dirname $f)/$(readlink "$f")"
    DST="$f"
    echo "$SRC -> $DST"
    rm "$DST"
    cp "$SRC" "$DST"
done

for f in $(find ./win32-ia32 -maxdepth 20 -type l)
do
    SRC="$(dirname $f)/$(readlink "$f")"
    DST="$f"
    echo "$SRC -> $DST"
    rm "$DST"
    cp "$SRC" "$DST"
done

for f in $(find ./win32-x64 -maxdepth 20 -type l)
do
    SRC="$(dirname $f)/$(readlink "$f")"
    DST="$f"
    echo "$SRC -> $DST"
    rm "$DST"
    cp "$SRC" "$DST"
done
