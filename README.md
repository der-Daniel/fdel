# fdel
fdel is a wrapper for a more robust/safe rm on Linux.
This script was motivated by this post: https://serverfault.com/a/363816/383469

# usage

fdel passes all parameter to `find`. If it is a valid command the script prints out all findings. Then the user is asked if he wants to delete those files. Given a `yes` the script deletes all findings by issuing the same command with the `-delete` flag of `find.

# example

## creating dummy data

    mkdir test
    cd test
    touch file1
    touch file2
    cd ..
    
## fdel

    fdel test -type f
    test/file2
    test/file1
    Delete (yes/no): 
   
By entering `yes` the given files will be deleted. 


