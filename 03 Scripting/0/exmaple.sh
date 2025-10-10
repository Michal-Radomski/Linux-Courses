#!/bin/bash
# This script prints "Hello, World!" to the terminal

echo "Hello, World!"

#!/bin/bash

# backup.sh - A simple backup script

# Prompt for user's name
echo "Hello! What is your name?"
read USER_NAME

# Greet the user
echo "Welcome, $USER_NAME!"

# Prompt for source directory
echo "Enter the full path of the directory you want to back up:"
read SOURCE_DIR

# Check if the directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Directory '$SOURCE_DIR' does not exist."
    exit 1
fi

# Define backup destination
BACKUP_DIR="$HOME/backup"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
BACKUP_NAME="backup_$TIMESTAMP.tar.gz"

# Create the backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Create the backup
tar -czf "$BACKUP_DIR/$BACKUP_NAME" "$SOURCE_DIR"

# Log the backup
LOG_FILE="$BACKUP_DIR/backup.log"
echo "[$(date)] Backup of '$SOURCE_DIR' created as '$BACKUP_NAME'" >> "$LOG_FILE"

# Completion message
echo "Backup completed! File saved to $BACKUP_DIR/$BACKUP_NAME"

#!/bin/bash

# This is a comment
echo "System Information Script"

# Store current date in a variable
CURRENT_DATE=$(date)

# Print system information
echo "Current Date and Time: $CURRENT_DATE"
echo "Username: $USER"
echo "Current Directory: $PWD"

# Check if a file exists
FILE_TO_CHECK="example.txt"

if [ -f "$FILE_TO_CHECK" ]; then
    echo "$FILE_TO_CHECK exists!"
else
    echo "$FILE_TO_CHECK does not exist."
    echo "Creating $FILE_TO_CHECK..."
    touch $FILE_TO_CHECK
fi

# Display disk usage
echo "Disk Usage:"
df -h

# End of script
echo "Script execution completed!"

#!/bin/bash

# This is a comment. The line above is called a "shebang".
# It tells the system to execute this file using the bash interpreter.

echo "Hello, World!"
echo "This is my first Bash script."

#!/bin/bash

# A simple script to back up a directory to a .tar.gz archive.

# --- Configuration ---
# Get the source and destination directories from the command-line arguments
SOURCE_DIR=$1
DEST_DIR=$2

# Get the current date in YYYY-MM-DD format
DATE=$(date +%Y-%m-%d)

# --- Input Validation ---
# Check if the user provided exactly two arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <source_directory> <destination_directory>"
    exit 1
fi

# Check if the source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Source directory '$SOURCE_DIR' not found."
    exit 1
fi

# --- Main Logic ---
# Create the destination directory if it doesn't already exist
mkdir -p "$DEST_DIR"

# Create the backup filename
FILENAME="backup-$(basename "$SOURCE_DIR")-$DATE.tar.gz"

# Create the compressed archive
echo "Creating backup of '$SOURCE_DIR'..."
tar -czf "$DEST_DIR/$FILENAME" "$SOURCE_DIR"

# Check if the tar command was successful
if [ $? -eq 0 ]; then
    echo "Backup successful! File saved to: $DEST_DIR/$FILENAME"
else
    echo "Error: Backup failed."
    exit 1
fi

echo "Done."


#!/bin/bash

# A script to analyze a web server log file.
# It finds the top IP addresses and top requested URLs.

# --- Functions ---
show_usage() {
    echo "Usage: $0 -f <logfile>"
    echo "  -f    Path to the log file to analyze."
    exit 1
}

analyze_log() {
    local logfile=$1

    echo "--- Log Analysis for: $logfile ---"

    # 1. Find the top 10 IP addresses by request count
    echo -e "\n[Top 10 IP Addresses by Request Count]:"
    awk '{print $1}' "$logfile" | sort | uniq -c | sort -nr | head -n 10

    # 2. Find the top 10 requested URLs
    echo -e "\n[Top 10 Requested URLs]:"
    # This awk command handles both GET and POST requests
    awk '{print $7}' "$logfile" | sort | uniq -c | sort -nr | head -n 10

    # 3. Find the count of HTTP status codes
    echo -e "\n[HTTP Status Code Counts]:"
    awk '{print $9}' "$logfile" | sort | uniq -c | sort -nr

    echo -e "\n--- Analysis Complete ---"
}

# --- Main Script Logic ---
# Check if no arguments were provided
if [ "$#" -eq 0 ]; then
    show_usage
fi

# Parse command-line options
while getopts "f:" opt; do
    case $opt in
        f)
            LOG_FILE="$OPTARG"
            ;;
        \?)
            echo "Invalid option: -$OPTARG" >&2
            show_usage
            ;;
    esac
done

# Check if the log file was provided and exists
if [ -z "$LOG_FILE" ]; then
    echo "Error: Log file not specified."
    show_usage
fi

if [ ! -f "$LOG_FILE" ]; then
    echo "Error: File '$LOG_FILE' not found."
    exit 1
fi

# Run the analysis
analyze_log "$LOG_FILE"
