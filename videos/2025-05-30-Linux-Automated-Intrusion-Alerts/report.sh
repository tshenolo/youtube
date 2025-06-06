#!/bin/bash
LOG="/var/log/auth.log"
OUTPUT="/tmp/ssh-failures.txt"
echo "Recent Failed SSH Attempts:" > $OUTPUT
grep "Failed password" $LOG | tail -n 10 >> $OUTPUT
mail -s "SSH Alert from $(hostname)" your@email.com < $OUTPUT