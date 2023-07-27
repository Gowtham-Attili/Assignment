#!/bin/bash
predefined_pwd="password"
read -s -p "Enter your password: " entered_pwd
echo

if [ "$entered_pwd" = "$predefined_pwd" ]; then
    echo "Access Granted"
else
    echo "Access Denied"
fi
