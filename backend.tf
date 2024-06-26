terraform {
  backend "s3" {
    bucket = "flexdeploy-test-bucket"
    region = "us-east-1"
  }
}
