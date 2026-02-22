# Update bucket and DynamoDB table name before running terraform init

terraform {
  backend "s3" {
   bucket = "your-terraform-state-harshitha"
    key = "platform/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-locks"
 }

}
