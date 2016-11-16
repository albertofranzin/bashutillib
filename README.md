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

* `warning` show a warning
```
warning "Something didn't work as expected."
```
