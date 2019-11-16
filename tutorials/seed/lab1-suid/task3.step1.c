#include <stdio.h>
#include <stdlib.h>
extern char **environ;
int main()
{
	char *argv[2];
	argv[0] = "/usr/bin/env";
	argv[1] = NULL;
	//execve("/usr/bin/env", argv, NULL);
	execve("/usr/bin/env", argv, environ);
	return 0 ;
}