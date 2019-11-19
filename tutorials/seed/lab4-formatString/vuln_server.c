#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/socket.h>
#include<netinet/ip.h>
#define PORT 9090
char *secret = "A secret message\n";
unsigned int target = 0x11223344;
void myprintf(char *msg)
{
    //printf("\n------------------ myprintf --------------------\n");
    
    // This line has a format-string vulnerability
   // printf("MSG value: [%.8x]\n",msg);
   // printf("The address of the ’secret’ argument: 0x%.8x\n", (unsigned) &secret);
    //printf("The value of the ’secret’ argument: 0x%.8x\n", secret);

    //printf("The address of the ’target’ argument: 0x%.8x\n", (unsigned) &target);
   // printf("The value of the ’target’ variable (after): 0x%.8x\n", target);

    printf("The address of the ’msg’ argument: 0x%.8x\n", (unsigned) &msg);
// This line has a format-string vulnerability
    printf(msg);
    printf("The value of the ’target’ variable (after): 0x%.8x\n", target);

   // printf("\nThis is how you print correctly:\n");
   // printf("%s", msg);
   // printf("\nThis is how not to print:\n");
   // printf(msg);
 //   printf("\nMSG: @ 0x%08x = %d [0x%8x]", &msg, msg, msg);
    //printf("\n------------------ myprintf --------------------\n");

}
// This function provides some helpful information. It is meant to
//
// simplify the lab task. In practice, attackers need to figure
//
// out the information by themselves.
void helper()
{
    //printf("-----------------  helper ---------------------\n");
    printf("HELPER address of the secret: 0x%.8x\n", (unsigned) secret);
    printf("HELPER address of the ’target’ variable: 0x%.8x\n", (unsigned) &target);
    printf("The value of the ’target’ variable (before): 0x%.8x\n", target);
   // printf("--------------------------------------\n");
}
void main()
{
    struct sockaddr_in server;
    struct sockaddr_in client;
    int clientLen;
    char buf[1500];
    helper();
    int sock = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP);
    memset((char *) &server, 0, sizeof(server));
    server.sin_family = AF_INET;
    server.sin_addr.s_addr = htonl(INADDR_ANY);
    server.sin_port = htons(PORT);
    if (bind(sock, (struct sockaddr *) &server, sizeof(server)) < 0)
    perror("ERROR on binding");
    printf("The address of the ’buf’ argument: 0x%.8x\n", (unsigned) &buf);
    printf("The value of the ’buf’ argument: 0x%.8x\n", (unsigned) buf);

    while (1) {
        bzero(buf, 1500);
        recvfrom(sock, buf, 1500-1, 0,
        (struct sockaddr *) &client, &clientLen);
        myprintf(buf);
        //printf('printing buff again... ' + &buf);
    }   
    close(sock);
}