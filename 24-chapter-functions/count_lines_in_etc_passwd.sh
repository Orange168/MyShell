#!/bin/bash
count_lines_in_etc_passwd()
{
  [[ -r /etc/passwd ]] && REPLY=$(wc -l < /etc/passwd)
  #  If /etc/passwd is readable, set REPLY to line count.
  #  Returns both a parameter value and status information.
  #  The 'echo' seems unnecessary, but . . .
  #+ it removes excess whitespace from the output.
}
count_lines_in_etc_passwd
echo 'count_lines functions return'$?

if count_lines_in_etc_passwd
then
  echo "There are $REPLY lines in /etc/passwd."
else
  echo "Cannot count lines in /etc/passwd."
fi  
# Thanks, S.C.
