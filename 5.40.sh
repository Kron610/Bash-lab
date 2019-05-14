#!/bin/bash
echo "Enter name"
read name
if grep $name /etc/passwd > /dev/null
then
grep $name /etc/passwd | cut -f4 -d":"
grep $name /etc/passwd | cut -f6 -d":"
ls `grep $name /etc/passwd | cut -f6 -d":"`
exit 0
else
echo "User $name not found"
exit 1
fi
