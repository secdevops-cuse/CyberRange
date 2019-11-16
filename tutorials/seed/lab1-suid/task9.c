#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
void main()
{ 
	int fd;
	int uid;
/*
*
*
*
Assume that /etc/zzz is an important system file,
and it is owned by root with permission 0644.
Before running this program, you should creat
the file /etc/zzz first. */
fd = open("/tmp/file", O_RDWR | O_APPEND);
printf("fd is %d\n", fd);
if(fd == -1) {
printf("Cannot open /tmp/file\n");
exit(0);
}
/* Simulate the tasks conducted by the program */
sleep(1);
write (fd, "closing the file \n", 17);
close (fd);
/* After the task, the root privileges are no longer needed,
it’s time to relinquish the root privileges permanently. */
uid=getuid();
setuid(getuid()); /* getuid() returns the real uid */
printf("set uid to [%d]\n", uid );
if (fork()) { /* In the parent process */
	printf("closing parent process\n");
	write (fd, "parent-process\n", 15);
	close (fd);
	exit(0);
} else { /* in the child process */
/* Now, assume that the child process is compromised, malicious
attackers have injected the following statements
into this process */
	printf("closing CHILD process\n");
	write (fd, "Malicious Data\n", 15);
	close (fd);
}
}