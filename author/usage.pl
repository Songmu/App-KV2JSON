#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use autodie;
use App::KV2JSON;

sub sample {
    my ($describe, @argv) = @_;
    my $result = App::KV2JSON->run(@argv);

    printf <<'...', $describe, join(' ', @argv), $result;
# %s
%% kv2json %s
%s
...
}

sample 'simple json', qw/var=baz blah=blah/;
sample 'array', 'fruits[]=apple,orange';
sample 'complicated structure', qw/alice[age]=18 alice[gender]=female/;
sample 'numerify the value', 'age#=18';

