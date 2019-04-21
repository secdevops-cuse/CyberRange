# Aws-Nuke

# Running a dry-run 

```
Do you really want to nuke the account with the ID your-aws-account-id and the alias 'xxxxxxx'?
Do you want to continue? Enter account alias to continue.
>
INFO[0001] TagOptionNotMigratedException: TagOption Migration not complete
        status code: 400, request id: 386c00f5-6326-11e9-8ac8-2dfdd1f74f75
eu-west-2 - EC2Snapshot - snap-086547f39461afb56 - filtered by config
eu-west-2 - EC2Snapshot - snap-04b7955aec33f306e - filtered by config
eu-west-2 - EC2Snapshot - snap-059ea8aa87617fd9d - filtered by config
eu-west-2 - EC2Snapshot - snap-0050629fbcf730158 - filtered by config
eu-west-2 - EC2Snapshot - snap-07b57b3b3d705981e - filtered by config
eu-west-2 - EC2Snapshot - snap-073a62297b46f0987 - filtered by config
eu-west-2 - EC2Snapshot - snap-0c8e21a671c59a8fa - filtered by config
eu-west-2 - EC2Snapshot - snap-09955224f804bea63 - filtered by config
eu-west-2 - EC2Snapshot - snap-0fecc837802fbd7b5 - filtered by config
eu-west-2 - EC2Snapshot - snap-0077d1249229c2c2e - filtered by config
eu-west-2 - EC2Snapshot - snap-021ec101f03a71b99 - filtered by config
eu-west-2 - EC2Snapshot - snap-0d640469e1f746ec9 - filtered by config
eu-west-2 - EC2Snapshot - snap-04776e7f3eaa3e4ee - filtered by config
eu-west-2 - EC2Snapshot - snap-08997d595e6ae6f1e - filtered by config
eu-west-2 - EC2Snapshot - snap-077608bf92f523d4a - filtered by config
eu-west-2 - EC2Snapshot - snap-079e31699c50fa57b - filtered by config
eu-west-2 - EC2Snapshot - snap-0486c0fad369e0779 - filtered by config
eu-west-2 - EC2Snapshot - snap-094f098a9bee36066 - filtered by config
eu-west-2 - EC2Snapshot - snap-043cba6440f8cfd2d - filtered by config
eu-west-2 - EC2Snapshot - snap-04cd806f930b81696 - filtered by config
eu-west-2 - EC2Snapshot - snap-0d1050c3e8c246885 - filtered by config
eu-west-2 - EC2DHCPOption - dopt-809e66e9 - would remove
eu-west-2 - EC2InternetGateway - igw-690ffc00 - [] - would remove
ERRO[0002] Listing SNSPlatformApplication failed. Please report this to https://github.com/rebuy-de/aws-nuke/issues/new.
    !!! InvalidAction: Operation (ListPlatformApplications) is not supported in this region
    !!!         status code: 400, request id: 80429f38-f80c-5ca8-b15e-ca0c5caa9f4d
WARN[0002] skipping request: DNS lookup failed for mobile.eu-west-2.amazonaws.com; assuming it does not exist in this region
eu-west-2 - OpsWorksUserProfile - arn:aws:iam::your-aws-account-id:user/cappetta - Cannot delete OpsWorksUserProfile of calling User
eu-west-2 - MediaConvertQueue - Default - cannot delete default queue
eu-west-2 - EC2SecurityGroup - sg-d5bc73bc - [Name: "default"] - cannot delete group 'default'
ERRO[0002] Listing SNSEndpoint failed. Please report this to https://github.com/rebuy-de/aws-nuke/issues/new.
    !!! InvalidAction: Operation (ListPlatformApplications) is not supported in this region
    !!!         status code: 400, request id: cac24758-d6f3-5aca-866c-126c7254092f
INFO[0002] TagOptionNotMigratedException: TagOption Migration not complete
        status code: 400, request id: 3969e942-6326-11e9-b8d3-194abc9372e6
eu-west-2 - KMSAlias - alias/aws/dynamodb - cannot delete AWS alias
eu-west-2 - KMSAlias - alias/aws/ebs - cannot delete AWS alias
eu-west-2 - KMSAlias - alias/aws/elasticfilesystem - cannot delete AWS alias
eu-west-2 - KMSAlias - alias/aws/es - cannot delete AWS alias
eu-west-2 - KMSAlias - alias/aws/glue - cannot delete AWS alias
eu-west-2 - KMSAlias - alias/aws/kinesisvideo - cannot delete AWS alias
eu-west-2 - KMSAlias - alias/aws/rds - cannot delete AWS alias
eu-west-2 - KMSAlias - alias/aws/redshift - cannot delete AWS alias
eu-west-2 - KMSAlias - alias/aws/s3 - cannot delete AWS alias
eu-west-2 - KMSAlias - alias/aws/ssm - cannot delete AWS alias
eu-west-2 - KMSAlias - alias/aws/xray - cannot delete AWS alias
eu-west-2 - EC2RouteTable - rtb-b7cd35de - [] - would remove
eu-west-2 - EC2VPC - vpc-abc23bc2 - [ID: "vpc-abc23bc2", IsDefault: "true"] - would remove
eu-west-2 - EC2NetworkACL - acl-95867efc - cannot delete default VPC
eu-west-2 - EC2Subnet - subnet-cb498ca2 - [] - would remove
eu-west-2 - EC2Subnet - subnet-f25650b8 - [] - would remove
eu-west-2 - EC2Subnet - subnet-cde30eb6 - [] - would remove
eu-west-2 - EC2InternetGatewayAttachment - igw-690ffc00 -> vpc-abc23bc2 - [] - would remove
eu-west-2 - S3Bucket - s3://secdevops-cuse-london - would remove
Scan complete: 45 total, 9 nukeable, 36 filtered.
```

```
m1ZZ3Nc0nTr0:aws-nuke cappetta$ nukeme
aws-nuke version v2.7.0 - Fri Nov 23 10:28:40 UTC 2018 - 0b0806d56f85a329de6d1eedbf8559d46988a7f4

Do you really want to nuke the account with the ID your-aws-account-id and the alias 'xxxxxxx'?
Do you want to continue? Enter account alias to continue.
>
eu-west-2 - EC2Snapshot - snap-086547f39461afb56 - filtered by config
eu-west-2 - EC2Snapshot - snap-04b7955aec33f306e - filtered by config
eu-west-2 - EC2Snapshot - snap-059ea8aa87617fd9d - filtered by config
eu-west-2 - EC2Snapshot - snap-0050629fbcf730158 - filtered by config
eu-west-2 - EC2Snapshot - snap-07b57b3b3d705981e - filtered by config
eu-west-2 - EC2Snapshot - snap-073a62297b46f0987 - filtered by config
eu-west-2 - EC2Snapshot - snap-0c8e21a671c59a8fa - filtered by config
eu-west-2 - EC2Snapshot - snap-09955224f804bea63 - filtered by config
eu-west-2 - EC2Snapshot - snap-0fecc837802fbd7b5 - filtered by config
eu-west-2 - EC2Snapshot - snap-0077d1249229c2c2e - filtered by config
eu-west-2 - EC2Snapshot - snap-021ec101f03a71b99 - filtered by config
eu-west-2 - EC2Snapshot - snap-0d640469e1f746ec9 - filtered by config
eu-west-2 - EC2Snapshot - snap-04776e7f3eaa3e4ee - filtered by config
eu-west-2 - EC2Snapshot - snap-08997d595e6ae6f1e - filtered by config
eu-west-2 - EC2Snapshot - snap-077608bf92f523d4a - filtered by config
eu-west-2 - EC2Snapshot - snap-079e31699c50fa57b - filtered by config
eu-west-2 - EC2Snapshot - snap-0486c0fad369e0779 - filtered by config
eu-west-2 - EC2Snapshot - snap-094f098a9bee36066 - filtered by config
eu-west-2 - EC2Snapshot - snap-043cba6440f8cfd2d - filtered by config
eu-west-2 - EC2Snapshot - snap-04cd806f930b81696 - filtered by config
eu-west-2 - EC2Snapshot - snap-0d1050c3e8c246885 - filtered by config
eu-west-2 - OpsWorksUserProfile - arn:aws:iam::your-aws-account-id:user/cappetta - Cannot delete OpsWorksUserProfile of calling User
INFO[0001] TagOptionNotMigratedException: TagOption Migration not complete
        status code: 400, request id: 6d17c749-6327-11e9-a9dc-5f93bd0052d1
WARN[0001] skipping request: DNS lookup failed for mobile.eu-west-2.amazonaws.com; assuming it does not exist in this region
eu-west-2 - S3Bucket - s3://secdevops-cuse-london - filtered by config
INFO[0002] TagOptionNotMigratedException: TagOption Migration not complete
        status code: 400, request id: 6d9a16e4-6327-11e9-8ab3-1304123158dc
eu-west-2 - KMSAlias - alias/aws/dynamodb - cannot delete AWS alias
eu-west-2 - KMSAlias - alias/aws/ebs - cannot delete AWS alias
eu-west-2 - KMSAlias - alias/aws/elasticfilesystem - cannot delete AWS alias
eu-west-2 - KMSAlias - alias/aws/es - cannot delete AWS alias
eu-west-2 - KMSAlias - alias/aws/glue - cannot delete AWS alias
eu-west-2 - KMSAlias - alias/aws/kinesisvideo - cannot delete AWS alias
eu-west-2 - KMSAlias - alias/aws/rds - cannot delete AWS alias
eu-west-2 - KMSAlias - alias/aws/redshift - cannot delete AWS alias
eu-west-2 - KMSAlias - alias/aws/s3 - cannot delete AWS alias
eu-west-2 - KMSAlias - alias/aws/ssm - cannot delete AWS alias
eu-west-2 - KMSAlias - alias/aws/xray - cannot delete AWS alias
ERRO[0002] Listing SNSPlatformApplication failed. Please report this to https://github.com/rebuy-de/aws-nuke/issues/new.
    !!! InvalidAction: Operation (ListPlatformApplications) is not supported in this region
    !!!         status code: 400, request id: d7151a6b-f9b7-5a85-9a8a-4f5f5f1b6b43
ERRO[0002] Listing SNSEndpoint failed. Please report this to https://github.com/rebuy-de/aws-nuke/issues/new.
    !!! InvalidAction: Operation (ListPlatformApplications) is not supported in this region
    !!!         status code: 400, request id: bf22261a-c917-53f7-b1a9-732e6fbb9231
eu-west-2 - MediaConvertQueue - Default - cannot delete default queue
Scan complete: 35 total, 0 nukeable, 35 filtered.

No resource to delete.
```
