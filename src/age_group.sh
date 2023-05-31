#!/bin/bash

# Get the user's age
read -p "Enter your age: " age

# Check if the user is an adult
if [[ $age -ge 18 ]]; then
  echo "You are an adult."
elif [[ $age -ge 13 && $age -lt 18 ]]; then
  echo "You are a teenager."
else
  echo "You are a child."
fi
