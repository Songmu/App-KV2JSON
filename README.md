# NAME

kv2json - command line utility for building json

# SYNOPSIS

    % kv2json var=baz blah=blah
    {"blah":"blah","var":"baz"}

    # array
    % kv2json fruits[]=apple,orange
    {"fruits":["apple","orange"]}

    # complicated structure
    % kv2json alice[age]=18 alice[gender]=female
    {"alice":{"gender":"female","age":"18"}}

    # numerify the value
    % kv2json age#=18
    {"age":18}

# DESCRIPTION

kv2json is command line utility for building json.

# INSTALLATION

    % cpanm App::KV2JSON

or you can get single packed executable file.

    % curl -L https://raw.githubusercontent.com/Songmu/App-KV2JSON/master/kv2json > /usr/local/bin/kv2json; chmod +x /usr/local/bin/kv2json

# LICENSE

Copyright (C) Songmu.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

Songmu <y.songmu@gmail.com>
