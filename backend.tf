terraform {
  backend "s3" {
    bucket = "s3bucketiti1"
    key    = "iti/terraform/terraform.tfstate"
    region = "us-east-1"
    #dynamodb_table = "dynamodb"
  }
}