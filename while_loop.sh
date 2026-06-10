#!/bin/bash
SIGNAL_TO_STOP_FILE="stoploop" #we define a variable representing the name of the file for which the while loop


while [[ ! -f "${SIGNAL_TO_STOP_FILE}" ]]; do # while loop that continues as long as the file does not exist
 echo "The file ${SIGNAL_TO_STOP_FILE} does not yet exis
t..."
 echo "Checking again in 2 seconds..."
 sleep 2
done
echo "File was found! Exiting..."
