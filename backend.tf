terraform {
  backend "s3" {
    bucket         = "raveendra-s3-statefile" 
    key            = "ravi/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
