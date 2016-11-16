#!/bin/sh

# hat tip: http://stackoverflow.com/questions/192292/
DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$DIR" ]]; then DIR="$PWD"; fi
DIR="$DIR/lib"
. "$DIR/data.sh"
. "$DIR/errors.sh"
. "$DIR/files.sh"
