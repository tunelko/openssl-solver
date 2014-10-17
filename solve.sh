#!/usr/bin/expect 
set cipher [lindex $argv 0]
set password [lindex $argv 1]
spawn  openssl $cipher -d -a -in secret -out plaintext 
expect "decryption password:"
send -- "$password\r"
spawn "sh cat.sh"
expect eof
