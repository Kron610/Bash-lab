#!/bin/bash

if [ "$#" -ne 1 ]
then
        echo '"-d" to see date'
        echo '"-w" to see workind users'
        echo '"-l" to see files in this directory'
	exit 1
else
        case $1 in
        -d) date
	    exit 0;;
        -w) who
	    exit 0;;
        -l) ls
	    exit 0;;
        *) echo '"-d" to see date'
           echo '"-w" to see workind users'
           echo '"-l" to see files in this directory' 
	   exit 1;;
        esac
fi
