#!/bin/sh
fatpack trace -Ilib script/kv2json!
fatpack packlists-for `cat fatpacker.trace` > fatpacker.packlists
(fatpack file; cat script/kv2json ) > kv2json
