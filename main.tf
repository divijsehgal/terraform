provider "aws" {
  region = "us-east-1"

}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "example-bucket"
  acl    = "private"
}

resource "aws_instance" "example_instance" {
  ami           = "ami-08a0d1e16fc3f61ea"
  instance_type = "t2.micro"

  tags = {
    name = "My-Demo-Instances"
  }

}
