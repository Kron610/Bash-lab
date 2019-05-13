#!/bin/bash
Y=UNAS
[ "$Y" = "UNIX" ] && echo "Equal"
[ "$Y" != "UNIX" ] && echo "Not equal"
exit 0
