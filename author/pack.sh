#!/bin/sh
set -e
set -x
src="script/kv2json"
dst="kv2json"
fatlib="fatlib"

rm -rf "$fatlib"
cpanm -L "$fatlib" JSON::PP
fatpack-simple --shebang '#!/usr/bin/env perl' "$src" -o "$dst"
chmod +x $dst
