/* stack.c */

/* This program has a buffer overflow vulnerability. */
/* Our task is to exploit this vulnerability */
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int bof(char *str)
{
    char buffer[24];
    //printf(" :: str's address is 0x%x \n", (unsigned int) &str);
    //printf(" :: buffers address is 0x%x \n", (unsigned int) &buffer[0]);
    /* The following statement has a buffer overflow problem */ 
    strcpy(buffer, str);


    return 1;
}

int main(int argc, char **argv)
{
    char str[517];
    FILE *badfile;

    badfile = fopen("badfile", "r");
    fread(str, sizeof(char), 517, badfile);
    bof(str);

    printf("Returned Properly\n");
    return 1;
}
