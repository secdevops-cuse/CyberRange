#!/usr/bin/env bash
# todo: add logic for windows / unix

# set newline character as the deliminator between results from the find cmd
IFS=$'\n' ;

# if osx - go into vmware's ovf tool folder
cd /Applications/VMware\ Fusion.app/Contents/Library/VMware\ OVF\ Tool/

# parse vmx files to create ovas on a backup drive (external ssd)
for vmx in $(find /Volumes/backup/vms -name "*vmx" ); do
    ova=$(echo $vmx | awk -F"/" '{print $5}'|sed 's/ //g')".ova";
    if [ -f  /Volumes/backup/vm-exports/$ova ]; then
        echo "Ova exists for: ["$vmx"] in ["$ova"]";
    else
        echo "Exporting: ["$vmx"] into ["$ova"]";
        echo time ./ovftool --X:logToConsole --X:logLevel=verbose  --acceptAllEulas $vmx /Volumes/backup/vm-exports/$ova

    fi
done

