# Overview
these are the commands used to import ovas into the environment and create
amis

`aws ec2 import-image --description "Metasploitable3 - w2k8" --license-type byol --disk-containers file://import_metasploitable3.json`
check on the status: `aws ec2 describe-import-image-tasks --import-task-ids <id>`

where json file contains:
```
[
  {
    "Description": "metasploitable3-ubuntu-1404",
    "Format": "vmdk",
    "UserBucket": {
      "S3Bucket": "xxxx",
      "S3Key": "vulnvms/metasploitable3-ubuntu-1404.ova"
    }
  }
]
```

## Copy images from one region to another... 
When you are logged into one AWS region, you can quickly copy over an image from 
```
aws ec2 copy-image --source-image-id ami-016b701c461d2f341 --source-region us-east-1 --name myhouse7
{
    "ImageId": "ami-020ba764325882e99"
}
```
# check your image import tasks
simply replace 123412341234 with the appropriate numerical identifier

`aws ec2 describe-import-image-tasks --import-task-ids import-ami-123412341234`
```
{
    "ImportImageTasks": [
        {
            "Status": "completed",
            "LicenseType": "BYOL",
            "Description": "import_sickOs1.2.json",
            "ImageId": "ami-0af37127c6324f3f4",
            "Platform": "Linux",
            "Architecture": "i386",
            "SnapshotDetails": [
                {
                    "Status": "completed",
                    "DeviceName": "/dev/sda1",
                    "Format": "VMDK",
                    "DiskImageSize": 710245888.0,
                    "SnapshotId": "snap-0047e84a2bc28a4db",
                    "UserBucket": {
                        "S3Bucket": "xxxxxx",
                        "S3Key": "vulnvms/Sick0s1.2.ova"
                    }
                }
            ],
            "ImportTaskId": "import-ami-083edcde9a8ad6bd8"
        }
    ]
}
```
