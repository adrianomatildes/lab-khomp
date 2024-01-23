terraform {
  required_version = ">= 0.12.7"
  backend "s3" {
    bucket = "khomp-bucket"
    key    = "tf/tfstate"
    profile = ""
    region = "us-east-1"
  }
}