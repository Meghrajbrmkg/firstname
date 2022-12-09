#!bin/bash
ADMIN="someone@def.com" 
ALERT=85 
df -H | grep -vE 'abc:/xyz/pqr | tmpfs |cdrom' | awk '{ print $5 " " $1 }' | while read output;
do  usep=$(echo $output | awk '{ print $1}' | cut -d'%' -f1 ) 
  partition=$(echo $output | awk '{ print $2 }' ) 
    if [ $usep -ge $ALERT ]; then
      	mail -s "Alert: Almost out of disk space $usep" $ADMIN
	    
	    fi done
