#!/bin/bash

# http://stackoverflow.com/questions/7868818/7869065#7869065
# warning: shows an error message without exiting
warning () {
    echo -e "$0:" "$@" >&2
}

# die: shows error messages and exits with error code
die () {
    rc=$1
    shift
    warning "$@"
    exit $rc
}
