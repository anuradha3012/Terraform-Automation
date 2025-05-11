terraform {
  backend "s3" {
    bucket = "myproject-developemt-terraform-bucket2" //bucket to lock state file which we have manually created in step6
    key = "main"
    region = "us-east-1"
    dynamodb_table = "my-dynamodb-table"
  }
}
