use strict;
use warnings;
use utf8;
use Test::More;

is `./kv2json hoge=fuga`, q!{"hoge":"fuga"}!."\n";

done_testing;
