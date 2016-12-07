#!/bin/bash

# remove empty lines from file
# remove_empty_lines inputFile outputFile
remove_empty_lines () { 
    sed '/^[[:space:]]*$/ d' < $1 > $2
}

# remove comment lines from file
# remove_comments inputFile outputFile
remove_comments () {
    TMP=`mktemp`
    sed '/^#/ d' < $1 > $TMP
    remove_empty_lines $TMP $2
    rm -f $TMP
}

# check if file exists
file_exists () {
    local answer=""
    if [ -f "$1" ]; then
       answer="1"
    fi
    echo $answer
}

# check if directory exists
# symlinks will pass this too
directory_exists () {
    local answer=""
    if [ -d "$1" ]; then
       answer="1"
    fi
    echo $answer
}

# check if a symlink exists
link_exists () {
    local answer=""
    if [ -L "$1" ]; then
       answer="1"
    fi
    echo $answer
}

