#!/bin/bash

script_dir="$(dirname "$0")"

"$script_dir/../create_environment.sh"

echo "Starting Reminder App"

"$script_dir/app/reminder.sh"
