#!/bin/sh
set -e
set -x
src="script/kv2json"
dst="kv2json"
extlib="extlib"

rm -rf "$extlib"
cpanm -L "$extlib" JSON::PP
fatpack-simple "$src" -o "$dst"

perl -i -0 -pe 's{\A#!perl}{#!/usr/bin/env perl}ms' "$dst"
chmod +x $dst
