# overview

let's create a bucket to store our terraform data in & a few folders within

```
aws s3 mb s3://secdevops-cuse/staging
aws s3api put-object --bucket secdevops-cuse --key development
aws s3api put-object --bucket secdevops-cuse --key staging
aws s3api put-object --bucket secdevops-cuse --key production
```

then let's initialize terraform in the ./terraform/environments/development