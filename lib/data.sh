# check if a string is an integer 
isinteger () {
    if [[ $1 =~ ^-?[0-9]+$ ]]; then
        echo "1"
    else
        echo ""
    fi
}

# check if a string is a valid numerical value (integer or real)
isnumber () {
    if [[ $1 =~ ^-?[0-9]+([.][0-9]+)?$ ]]; then
        echo "1"
    else
        echo ""
    fi
}

