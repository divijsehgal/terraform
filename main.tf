variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
}

resource "aws_s3_bucket" "example" {
  bucket = "flexdeploy-test-bucket"
}

resource "aws_instance" "example_instance" {
  ami           = "ami-08a0d1e16fc3f61ea"
  instance_type = var.instance_type

  tags = {
    name = "My-Demo-Instances2"
  }
}
 
output "instance_id" {
  value = aws_instance.example_instance.id
}
