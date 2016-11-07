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

