#!/bin/bash

echo "Setting up Environment"

script_directory="$(directoryname "$0")"

mkdir -p "$script_directory/submission_reminder_app"

mkdir -p "$script_directory/submission_reminder_app/app"

mkdir -p "$script_directory/submission_reminder_app/modules"

mkdir -p "$script_directory/submission_reminder_app/config"

mkdir -p "$script_directory/submission_reminder_app/assets"

rm -rf "$script_directory/submission_reminder_app/modules/functions.sh"

rm -rf "$script_directory/submission_reminder_app/app/reminder.sh"

rm -rf "$script_directory/submission_reminder_app/config/config.env"

rm -rf "$script_directory/submission_reminder_app/assets/submissions.txt"

touch "$script_directory/submission_reminder_app/modules/functions.sh"

touch "$script_directory/submission_reminder_app/app/reminder.sh"

touch "$script_directory/submission_reminder_app/assets/submissions.txt"

touch "$script_directory/submission_reminder_app/config/config.env"

cat "$script_directory/reminder.sh" >> "$script_directory/submission_reminder_app/app/reminder.sh"

cat "$script_directory/functions.sh" >> "$script_directory/submission_reminder_app/modules/functions.sh"

cat "$script_directory/config.env" >> "$script_directory/submission_reminder_app/config/config.env"

cp "$script_directory/submissions.txt" "$script_directory/submission_reminder_app/assets/submissions.txt"

echo "D’phenomenal, Shell Navigation, submitted" >> "$script_directory/submission_reminder_app/assets/submissions.txt"

echo "Sammy, Shell Navigation, not submitted" >> "$script_directory/submission_reminder_app/assets/submissions.txt"

echo "Chiagozem, Shell Navigation, not submitted" >> "$script_directory/submission_reminder_app/assets/submissions.txt"

echo "Bolu, Shell Navigation, submitted" >> "$script_directory/submission_reminder_app/assets/submissions.txt"

echo "Hauwa, Shell Navigation, submitted" >> "$script_directory/submission_reminder_app/assets/submissions.txt"

chmod u+x "$script_directory/submission_reminder_app/app/reminder.sh"

chmod u+x "$script_directory/submission_reminder_app/modules/functions.sh"

chmod u+x "$script_directory/submission_reminder_app/config/config.env"

echo "Done setting up the Environment"