#!/usr/bin/expect -f

# Set user vars
set username [lindex $argv 0];
set password [lindex $argv 1];

#Add user command     
spawn /opt/nessus/sbin/nessuscli adduser  

expect -exact  "Login: "
send -- "$login\r"
expect -exact "Login password: "
send -- "$auth\r"
expect -exact "Login password (again): "
send -- "$password\r"  
expect "system administrator"  
send -- "y\r"       
expect "empty rules set"
send -- "\r"      
expect "system administrator"  
send -- "y\r"              
expect eof'