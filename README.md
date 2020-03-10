# terraform-aws-s3
Terraform module to creates S3 bucket

# Terraform version
This module was written and tested with Terraform v0.12.9

# Assumptions
- You want to create security-group which will be attached to VPC and can be consumed by other resources inside VPC
- You have access to AWS console where you can create you security credentials AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY
- You configured your security credentials as your environment variables `~/.bash_profile`

```bash
export AWS_ACCESS_KEY_ID=XXXX
export AWS_SECRET_ACCESS_KEY=XXXX
export AWS_DEFAULT_REGION=XXXX
```

# How to consume

- [`example`](https://github.com/andrewpopa/terraform-aws-s3/tree/master/example) folder contain an example of how to consume the module

as pre-requirement you'll need:
- github.com/andrewpopa/terraform-aws-vpc
- github.com/andrewpopa/terraform-aws-security-group

```terraform
module "ptfe-es" {
  source = "../"
  bucket = "ptfe-external-svc"
  tags = {
    Name = "ptfe-external-services"
  }
  force_destroy = true
  region        = "eu-central-1"
  versioning    = true
}
```

# Inputs
| **Name**  | **Type** | **Default** | **Required** | **Description** |
| ------------- | ------------- | ------------- | ------------- | ------------- |
| bucket | string |  | yes | S3 bucket name |
| acl | string | private | yes | Default private ACL |
| tags | map |  | no | Tags for S3 bucket |
| force_destroy | bool | false | no | All object should be deleted | 
| region | string |  | yes | AWS region for S3 bucket |
| versioning | bool | true | no | Versioning on the s3 bucket |


# Outputs
| **Name**  | **Type** | **Description** |
| ------------- | ------------- | ------------- |
| s3_bucket_id | string | Bucket name |
| s3_bucket_arn | string | ARN for the bucket |
| s3_bucket_region | string | Bucket region |
