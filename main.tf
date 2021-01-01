provider "aws" {
  access_key                  = var.aws_access_key
  region                      = var.aws_region
  s3_force_path_style         = true
  secret_key                  = var.aws_secret_key
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    acm            = "https://uniquelocalstack.tunnelto.dev"
    apigateway     = "https://uniquelocalstack.tunnelto.dev"
    cloudformation = "https://uniquelocalstack.tunnelto.dev"
    cloudwatch     = "https://uniquelocalstack.tunnelto.dev"
    dynamodb       = "https://uniquelocalstack.tunnelto.dev"
    ec2            = "https://uniquelocalstack.tunnelto.dev"
    es             = "https://uniquelocalstack.tunnelto.dev"
    firehose       = "https://uniquelocalstack.tunnelto.dev"
    iam            = "https://uniquelocalstack.tunnelto.dev"
    kinesis        = "https://uniquelocalstack.tunnelto.dev"
    kms            = "https://uniquelocalstack.tunnelto.dev"
    lambda         = "https://uniquelocalstack.tunnelto.dev"
    rds            = "https://uniquelocalstack.tunnelto.dev"
    route53        = "https://uniquelocalstack.tunnelto.dev"
    s3             = "https://uniquelocalstack.tunnelto.dev"
    secretsmanager = "https://uniquelocalstack.tunnelto.dev"
    ses            = "https://uniquelocalstack.tunnelto.dev"
    sns            = "https://uniquelocalstack.tunnelto.dev"
    sqs            = "https://uniquelocalstack.tunnelto.dev"
    ssm            = "https://uniquelocalstack.tunnelto.dev"
    stepfunctions  = "https://uniquelocalstack.tunnelto.dev"
    sts            = "https://uniquelocalstack.tunnelto.dev"
  }
}

resource "aws_s3_bucket" "b" {
  bucket = var.s3_bucket_name
  acl    = "public-read"
}
