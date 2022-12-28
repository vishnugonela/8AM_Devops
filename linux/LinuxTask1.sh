/* 1.what is the command to find a file */
// a.file must end with .java
    find -type f -name '*.java' // java
    find -type f\(-name "*.sh" -o -name ".*txt"\) //to find files with multiple extensions

//b. file must be greater than 10 MB
   find . -size 6M // exact size
   find . -size +2G //finds files greater than given size
   find . -size -10k // finds files less than the gicen size
   find . -size +10M -size -20M // finds files in the given size range
   find . -type f -empty // find the empty file


//c. file must be older than 10 days
    find. -mtime -size -print
    find. -mtime -10 -print

//d. all files under /var directory which ends with .log 
    find /var/log -type f -name "*.log" 