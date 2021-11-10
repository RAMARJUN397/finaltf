terraform {
  required_version = ">=0.12.13"
}

provider "aws" {
  region  = "ap-southeast-1"
  version = "~> 2.36.0"
}

#Aws Instance
#/*resource "aws_instance" "windows" {
 #  ami = "ami-0bd2beaddfd6419fc"
  # instance_type = "t2.micro"
 #  tags = {
  #   Name = "windows"
 #  }
#}
# Build the VPC
resource "aws_vpc" "vpc" {
  cidr_block           = "10.1.0.0/16"
  instance_tenancy     = "default"
  tags = {
    Name      = "Vpc"
    Terraform = "true"
  }
}
# Build route table 1
resource "aws_route_table" "route_table1" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = "RouteTable1"
    Terraform = "true"
  }
}
# Build route table 2
resource "aws_route_table" "route_table2" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = "RouteTable2"
    Terraform = "true"
  }
}
