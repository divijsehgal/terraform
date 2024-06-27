terraform {
  backend "s3" {
    key="terraformStateFile/terraform.tfstate"
    bucket = "flexdeploy-test-bucket2"
    region = "us-east-1"
  }
}
