#!/bin/bash

if [ "$#" -ne 1 ]
then
        echo '"-d" to see date'
        echo '"-w" to see workind users'
        echo '"-l" to see files in this directory'
else
        case $1 in
        -d) date;;
        -w) who;;
        -l) ls;;
        *) echo '"-d" to see date'
           echo '"-w" to see workind users'
           echo '"-l" to see files in this directory' ;;
        esac
fi
