#!/bin/bash
# Defines Bash as the interpreter used to run this script.

# Make sure the user entered exactly two arguments
if [[ $# -ne 2 ]]; then
    # Validate that the total number of arguments is different from two.

    echo "Usage: $0 <name> <domain>"
    # Show the user the correct way to execute the script.

    exit 1
    # Stop the script and return an error exit code.
fi

NAME="$1"
# Assign the first argument entered by the user to the NAME variable.

DOMAIN="$2"
# Assign the second argument entered by the user to the DOMAIN variable.

# Test the domain by sending one ping request
if ping -c 1 "$DOMAIN" &>/dev/null; then
    # Send a single ICMP request to the domain while hiding the command output.
    # This block runs only when the ping command finishes successfully.

    RESULT="success"
    # Record the result as successful.
else
    RESULT="failure"
    # Record the result as failed.
fi

# Get the current system date and time
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
# Save the generated date and time value inside the TIMESTAMP variable.

# Save the result in a CSV file
echo "$NAME,$DOMAIN,$RESULT,$TIMESTAMP" > results.csv
# Export the name, domain, ping result, and timestamp into the CSV file.
# The ">" redirection symbol replaces the existing file content.

echo "Result saved to results.csv"
# Print a final message confirming that the file was created.