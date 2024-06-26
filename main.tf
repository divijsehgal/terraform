variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "example-bucket"
  acl    = "private"
}

resource "aws_instance" "example_instance" {
  ami           = "ami-08a0d1e16fc3f61ea"
  instance_type = var.instance_type

  tags = {
    name = "My-Demo-Instances"
  }
}
 
resource "azuredevops_project" "project" {
  name        = "ProjectFDTF"
  description = "Project From FlexDeploy"
}

output "instance_id" {
  value = aws_instance.example_instance.id
}
