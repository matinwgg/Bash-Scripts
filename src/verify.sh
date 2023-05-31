#!/bin/bash

# Get the user's email address and password
email_address=$(echo "Enter your email address: " | read)
password=$(echo "Enter your password: " | read -s)

# Check if the email address is genuine
regex="^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z]+$"
if [[ ! $email_address =~ $regex ]]; then
  echo "Invalid email address."
  exit 1
fi

# Ask the user to retype their password
retyped_password=$(echo "Retype your password: " | read -s)

# Check if the passwords match
if [[ $password != $retyped_password ]]; then
  echo "Wrong password!"
  exit 1
fi

# Print "Congratulations!"
echo "Congratulations!"
