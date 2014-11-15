#!/bin/sh
set -e
set -x
src="script/kv2json"
dst="kv2json"

fatpack trace -Ilib $src
fatpack packlists-for `cat fatpacker.trace` > fatpacker.packlists
fatpack tree `cat fatpacker.packlists`

if type perlstrip >/dev/null 2>&1; then
    find fatlib -type f -name '*.pm' | xargs -n1 perlstrip -s
fi

(echo "#!/usr/bin/env perl"; fatpack file; cat $src ) > $dst
chmod +x $dst
