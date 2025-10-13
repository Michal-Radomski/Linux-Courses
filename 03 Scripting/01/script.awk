#!/usr/bin/awk -f
# This is a comment

BEGIN {
    print "Starting the AWK script"
}

# Print lines containing "pattern"
 /pattern/ {
    print $0
}

END {
    print "End of script"
}

# Run: ./script.awk test.txt
