#!/usr/bin/awk -f
# process.awk

BEGIN {
    FS = ", "  # Define the input field separator (comma and space)
    print "Name and Age of people above 30:"
}

NR > 1 {  # Skip the first line (header)
    if ($2 > 30) {  # Check if the age (second column) is above 30
        print "Name: " $1 ", Age: " $2  # Print name and age
    }
}

# Run: awk -f process.awk data.txt
