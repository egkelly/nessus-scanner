#!/bin/bash
#Set Variables
export license="VUK9-JX4L-ME4B-99GM" 
export user="ekelly@paraport.com"
export password="104090Emma!!"

./adduser.sh "$user" "$password" 

#Register nessus system
/opt/nessus/sbin/nessuscli fetch --register "$license"