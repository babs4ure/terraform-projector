#configure Aws provider
provider "aws" {
  region = "us-east-1"
  profile = "terraf-user"
}

#stores terraform note files in s3
terraform {
  backend "s3" {
    bucket = "babsoke45-terraf-remote-state"
    key    = "terraform.tfstate.dev"
    region = "us-east-1"
    profile = "terraf-user"
  }
}
