#!/usr/bin/awk -f
# This is a comment

BEGIN { FS=":" }
{
    print $1
}


# Print lines containing "pattern"
 /pattern/ {
    print $0
}

END {
    print "End of script"
}

# Run: ./users.awk /etc/passwd
