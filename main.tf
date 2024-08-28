provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "raveendra" {
  instance_type = "t2.micro"
  ami = "ami-053b0d53c279acc90" 
  subnet_id = "subnet-00d40438033250794" 
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "raveendra-s3-statefile" 
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
