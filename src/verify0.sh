#!/bin/bash

# Function to validate email using regex
validate_email() {
    email_regex="^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$"
    if [[ $1 =~ $email_regex ]]; then
        return 0
    else
        return 1
    fi
}

# Function to display asterisks for password input
read_password() {
    password=""
    prompt="Enter your password: "
    while IFS= read -p "$prompt" -r -s -n 1 char
    do
        if [[ $char == $'\0' ]]; then
            break
        fi
        prompt='*'
        password+="$char"
    done
    echo
}

# Prompt the user for an email address and validate it
get_email() {
    read -p "Enter your email address: " email

    # Validate the email
    if validate_email "$email"; then
        echo -e "\e[32mValid email address!\e[0m"
    else
        echo -e "\e[31mInvalid email address!\e[0m Please try again."
        get_email
    fi
}

# Call get_email
get_email

# Prompt the user for a password
read_password

# Prompt the user to retype the password
read_password_retype() {
    retype_password=""
    prompt="Retype your password: "
    while IFS= read -p "$prompt" -r -s -n 1 char
    do
        if [[ $char == $'\0' ]]; then
            break
        fi
        prompt='*'
        retype_password+="$char"
    done
    echo
}

read_password_retype

# Check if the passwords match
if [ "$password" = "$retype_password" ]; then
    # Print congratulations in green
    echo "$(tput setaf 2)Congratulations! Passwords matches.$(tput sgr0)"
else
    # Print wrong password in red
    echo "$(tput setaf 1)Wrong password!$(tput sgr0)"
fi


'''
    \e[31m	Red
    \e[32m	Green
    \e[33m	Yellow
    \e[34m	Blue
    \e[35m	Magenta
    \e[36m	Cyan
    \e[37m	White

    For eg.
    echo -e "\e[31mHello, world!\e[0m"

'''
