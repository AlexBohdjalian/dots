#!/bin/bash

# Wake up protocol - run once per day
WAKE_UP_DATE_FILE="$HOME/.config/dots/custom/wake-up-protocol.date"
CURRENT_DATE=$(date +%Y-%m-%d)

# Check if we've already run today
if [ -f "$WAKE_UP_DATE_FILE" ]; then
    LAST_RUN_DATE=$(cat "$WAKE_UP_DATE_FILE" 2>/dev/null || echo "")
else
    LAST_RUN_DATE=""
fi

# Exit early if we've already run today
if [ "$CURRENT_DATE" = "$LAST_RUN_DATE" ]; then
    exit 0
fi

# Commands to run on wake up
run_wake_up_commands() {
    (
        # Add wake up commands here
        brew update
        brew upgrade
        brew cleanup
        npm update -g
    ) > /dev/null 2>&1
}

# Run the commands and update the date file on success
if run_wake_up_commands; then
    echo "$CURRENT_DATE" > "$WAKE_UP_DATE_FILE"
fi
