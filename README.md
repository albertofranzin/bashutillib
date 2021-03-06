Small collection of utilities for my scripts. Use at your own risk.


###Usage
Clone the repo, then in your bash script add
```
source /path/to/bashutillib/utillib.sh
```

###List of functions
* `die` shows an error and exits with error code >0.
```
die 1 "Something went really wrong."
```

* `file_exists`, `directory_exists`, `link_exists` test whether there is a
file, directory/symlink or symlink with the given path/name.
Return `""` if false, `"1"` if true.
```
touch existingfile.txt
if [ `file_exists existingfile.txt` ]; then
    echo "yay"
else
   echo "nay"
fi
# yay
rm existingfile.txt
if [ `file_exists existingfile.txt` ]; then
    echo "yay"
else
   echo "nay"
fi
# nay
if [ ! `file_exists existingfile.txt` ]; then
    echo "yay"
else
   echo "nay"
fi
# yay
```

* `isinteger`, `isnumber` check whether a given parameter is, respectively,
an integer or a valid number.
```
isinteger 4    # true
isinteger "4"  # true
isinteger "no" # false
isnumber -4.3  # true
```

* `remove_comments` remove comments in a file (non in-place). Also removes empty lines.
```
remove_comments inputFile outputFile
```

* `remove_empty_lines` remove blank lines in a file (non in-place)
```
remove_empty_lines inputFile outputFile
```

* `strlen` returns the length of a given string.
```
strlen "hello!"  # 6
```

* `warning` show a warning
```
warning "Something didn't work as expected."
```
