# Overview
These are the commands used to import ovas into the environment and create
amis. 

Note: Inspec tests found an unchangable behavior which is causing a CI/CD build failure.
  When images are imported the descriptions are not taken, AWS creates an AMI with the 
  "AMI-Name" of import-ami-xxxx.  Inspec checks were created in the London region buildout,
  as a result of copying the images.  
  
  To build the AMIs yourself & get inspec passing, it appears the ova's need to be imported, then 
  copied to another region, then copied back to the desired region.
  
  <!-- todo: analyze/automate the 3-step image import process -->

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

# Check your image import tasks
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


## Share the AMI's with users:
1. create a list of ids in a file, parse with awk -> `awk '{print "{UserId="$1"},"}' aws_accts | tr -d "\n"`
2. Iterate through all the AMI's and add each user ->
```
for image in in $(aws ec2 describe-images --owner 588675961644| jq -r '.Images[].ImageId' ); do echo aws ec2 modify-image-attribute --image-id $image --launch-permission \"Add=[{UserId=xxxxxxxx}]\";done | grep -iv in > /tmp/script; chmod 755 /tmp/script; /tmp/script

```

# Copy AMI's and rename them with a custom name 
`chkami | awk '{print "aws ec2 copy-image --source-image-id " $2 " --source-region us-east-1 --name " $4}'`

```
aws ec2 copy-image --source-image-id ami-016b701c461d2f341 --source-region us-east-1 --name myhouse7
{
    "ImageId": "ami-020ba764325882e99"
}
```


## Image Export Task
`aws ec2 create-instance-export-task --instance-id id --target-environment target_environment \
 --export-to-s3-task DiskImageFormat=disk_image_format,ContainerFormat=ova,S3Bucket=bucket,S3Prefix=prefix1`

### Note S3 Bucket Error:
  `An error occurred (AuthFailure) when calling the CreateInstanceExportTask operation: vm-import-export@amazon.com must have WRITE and READ_ACL permission on the S3 bucket.`
  
```
base:staging cappetta$ aws ec2 create-instance-export-task --instance-id i-00ce7ffc211ac60f2 --target-environment vmware  --export-to-s3-task DiskImageFormat=VMDK,ContainerFormat=OVA,S3Bucket=xxxxxxxx,S3Prefix=vulnvms/flarevm
{
    "ExportTask": {
        "ExportTaskId": "export-i-06deac721898e134d",
        "ExportToS3Task": {
            "ContainerFormat": "ova",
            "DiskImageFormat": "vmdk",
            "S3Bucket": "xxxxx",
            "S3Key": "vulnvms/flarevmexport-i-06deac721898e134d.ova"
        },
        "InstanceExportDetails": {
            "InstanceId": "i-00ce7ffc211ac60f2",
            "TargetEnvironment": "vmware"
        },
        "State": "active"
    }
}
base:staging cappetta$ aws ec2 describe-export-tasks --export-task-ids export-i-06deac721898e134d
{
    "ExportTasks": [
        {
            "ExportTaskId": "export-i-06deac721898e134d",
            "ExportToS3Task": {
                "ContainerFormat": "ova",
                "DiskImageFormat": "vmdk",
                "S3Bucket": "xxxx",
                "S3Key": "vulnvms/flarevmexport-i-06deac721898e134d.ova"
            },
            "InstanceExportDetails": {},
            "State": "active"
        }
    ]
}
```

