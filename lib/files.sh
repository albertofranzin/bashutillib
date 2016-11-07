#!/bin/bash

# remove comment lines from file
# remove_comments inputFile outputFile
remove_comments () {
    sed '/^#/ d' < $1 > $2
}
