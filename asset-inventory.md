# Overview:

 There are many OSCP guides which have a variety of technical info.  Yet, 
 only few solutions which help an individual construct a full penTest 
 environment, targets & all, in the AWS.  

 This ultimate goal is to automate downloading the ova/vmdk into S3, 
 create ami's in your account, store the info into env for terraform,
 automate the setup/destruction via simple git commit msg trigger. 

 There are a bunch of CTF target scripts & docker assets documented in 
 various readmes in this project which need to be setup/documented.  
 I believe they add great value to this project yet are not a top 
 priority. 

Given this is now the XXth iteration of this Cyber-Cloud project, 
it is very likely it will continue to evolve. 
 
 
https://github.com/codingo/Reconnoitre
https://github.com/wwong99/pentest-notes/blob/master/oscp_resources/OSCP-Survival-Guide.md#enumeration
https://github.com/AnasFullStack/Penetration-Testing-Study-Notes/blob/master/oscp_resources/OSCP-Survival-Guide.md#passive-information-gathering



https://github.com/pwnwiki/pwnwiki.github.io


# Creating my own vulnerable machines, packer tag if automated AWS-AMI
Ref: Medium Article:            https://medium.com/@andr3w_hilton/oscp-training-vms-hosted-on-vulnhub-com-22fa061bf6a1
   - [~] Kioptrix:              https://www.vulnhub.com/entry/kioptrix-2014-5,62/
   - [x] FristiLeaks: 1.3       https://www.vulnhub.com/entry/fristileaks-13,133/
   - [x] Stapler: 1             https://www.vulnhub.com/entry/stapler-1,150/
   - [~] VulnOS: 2              https://www.vulnhub.com/entry/vulnos-2,147/
   - [x] SickOs: 1.2            https://www.vulnhub.com/entry/sickos-12,144/
   - [x] Brainpan: 1            https://www.vulnhub.com/entry/brainpan-1,51/
   - [x] Vulnix:                https://www.vulnhub.com/entry/hacklab-vulnix,48/
   - [~] scream.exe             https://www.vulnhub.com/entry/devrandom-scream,47/ 
   - [x] pWnOS: 2.0             https://www.vulnhub.com/entry/pwnos-20-pre-release,34/
   - [~] SkyTower: 1            https://www.vulnhub.com/entry/skytower-1,96/
   - [x] pwnlab_init:             
   - [x] mrRobot:             
   - [x] Metasploitable2 (nix):             
   - [x] Metasploitable3 (win):             
   - [x] Metasploitable3 (nix):             
   - [~] Docker Assets:             
 
 Metasploitable3 
    - [x] win2k8 : https://github.com/rapid7/metasploitable3
        Note: this requires a packer: `time packer build -only=vmware-iso ./templates/windows_2008_r2.json   `
        Note: there is an issue opened for sqlite3.h failure: `https://github.com/rapid7/metasploitable3/issues/371`
        Note: backup - https://drive.google.com/drive/folders/0B1QwFopW0EsNbkljZWk2aWFsOGs 
    - [x] ubuntu1404 : https://github.com/rapid7/metasploitable3

# todo: 
[~] - Docker Assets: https://github.com/vulhub/vulhub
[~] - Generate vulnerable virtual machines on the fly:  https://github.com/SecGen/SecGen



## Technical Write-Ups
 Other OSCP attempt: https://github.com/ferreirasc/oscp