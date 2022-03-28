variable "infrastructure_version" {
  default = "1"
}

provider "aws" {
  region = "ap-south-1"
}

terraform {
  backend "s3" {
    encrypt = true
    bucket  = "terraform-bluegreen"
    region  = "ap-south-1"
    key     = "v1"
  }
}
