terraform {
  backend "s3" {
    key="terraformStateFile/terraform.tfstate"
    bucket = "flexdeploy-test-bucket"
    region = "us-east-1"
  }
}
