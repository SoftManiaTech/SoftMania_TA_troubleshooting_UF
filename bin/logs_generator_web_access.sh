#!/bin/bash
export SPLUNK_HOME=/opt/splunk
# Define the log file path
LOG_FILE="$SPLUNK_HOME/etc/apps/SoftMania_TA_troubleshooting/bin/web_access_logs.log"

# Check if the log file already exists, if not create a new one
if [ ! -f "$LOG_FILE" ]; then
    touch "$LOG_FILE"
    echo "$(date +'%Y-%m-%d %H:%M:%S') Log file created: $LOG_FILE"
fi

# Function to log messages with timestamp, log level, error code, and random message
log_message() {
    local log_level=$1
    local error_code=$2
    local messages=("User accessed webpage successfully" "Page not found" "Internal server error" "Access denied" "Invalid credentials")
    local random_message=${messages[$RANDOM % ${#messages[@]}]}
    echo "$(date +'%Y-%m-%d %H:%M:%S') - [$log_level] [$error_code] - $random_message" >> "$LOG_FILE"
}

# Add web access logs with current timestamp, random error codes, log levels, and messages to the log file
log_message "INFO" "200"
log_message "INFO" "200"
log_message "ERROR" "404"
log_message "WARNING" "500"

echo "$(date +'%Y-%m-%d %H:%M:%S') Web access logs with current timestamp, random error codes, log levels, and messages have been added to $LOG_FILE"
