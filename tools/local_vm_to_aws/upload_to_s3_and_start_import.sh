#!/usr/bin/env bash
# set newline character as the deliminator between results from the find cmd
IFS=$'\n' ;

# find json files to create ami's off of
IFS=$'\n' ;


for i in $(ls /Volumes/backup/vm-exports); do aws s3 cp /Volumes/backup/vm-exports/$i s3://<bucket>/vulnvms/ ; done

for json_full in $(find ./jsons/ -name "*json"  ); do
    json=$(echo $json_full | awk -F"/" '{print $8}'|sed 's/ //g');
    echo $json " []" $json_full
    aws ec2 import-image --description "$json" --license-type byol --disk-containers file://$json
done
