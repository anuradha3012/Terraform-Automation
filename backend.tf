terraform {
  backend "s3" {
    bucket = "myproject-developemt-terraform-bucket2"
    key = "main"
    region = "us-east-1"
    dynamodb_table = "my-dynamodb-table"
  }
}
