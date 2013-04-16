# nr

by Lin Jen-Shin ([godfat](http://godfat.org))

## LINKS:

* [github](https://github.com/godfat/nr)
* [rubygems](http://rubygems.org/gems/nr)
* [rdoc](http://rdoc.info/github/godfat/nr)

## DESCRIPTION:

nr --net received-- The other side of nc.

Run the server with `nr` and client with `echo 'test' | nc localhost 12344`.

## REQUIREMENTS:

* [celluloid-io](https://github.com/celluloid/celluloid-io)

## INSTALLATION:

    gem install nr

## SYNOPSIS:

    > nr -h
    Usage: nr HOST PORT
      -o, --host HOST  HOST it is listening to (default: 0.0.0.0)
      -p, --port PORT  PORT it is bound     to (default: 12344)
      -h, --help       Print this message
      -v, --version    Print the version

Run the server with `nr` and client with `echo 'test' | nc localhost 12344`.

* Step 1:

    > nr
    Listening on 0.0.0.0:12344

* Step 2:

    > echo 'test' | nc localhost 12344

* Step 3: You'll see `test` printed from `nr`.

Or with different port:

    > nr 9090
    Listening on 0.0.0.0:9090

## How Is This useful?

I often need to edit my source on my Mac with GUI editor and then apply
it on my Linux in order to run it. I'll do this on my Linux:

    nr | git apply

And do this on my Mac:

    git diff | nc my-linux 12344

This is much more pleasant than doing this:

    git diff | pbcopy

and then manually paste to my Linux since my terminal might not do the
right job sometimes with large portion of codes. Using pure network with
`nr` and `nc` is much more reliable.

## LICENSE:

Apache License 2.0

Copyright (c) 2011-2013, Lin Jen-Shin (godfat)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

<http://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
