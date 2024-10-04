#!/bin/bash

# Check if the config file exists
if [[ ! -f config/config.env ]]; then
    echo "Error: Configuration file config/config.env not found!"
    exit 1
fi

# Load environment variables from config.env
source config/config.env

# Check if the reminder script exists
if [[ ! -f app/reminder.sh ]]; then
    echo "Error: Reminder script app/reminder.sh not found!"
    exit 1
fi

# Start the reminder application
echo "Starting the submission reminder app..."
bash app/reminder.sh

# Optional: Include more logic, like logging the start time
echo "Submission reminder app started at $(date)"

