terraform {
  required_version = ">=0.12.13"
}

provider "aws" {
  region     = "ap-southeast-1"
  #access_key = "AKIARGZPFHSSJRTG2FB2"
  #secret_key = "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"
}

#Aws Instance
resource "aws_instance" "windows" {
   ami = "ami-0bd2beaddfd6419fc"
   instance_type = "t2.micro"
   tags = {
     Name = "windows"
   }
}
