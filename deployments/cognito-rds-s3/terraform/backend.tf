terraform {
  backend "s3" {
    bucket = "tne-terraform-state"
    key = "state/kubeflow/terraform.tfstate"
    region = "us-west-2"
    encrypt = true
    dynamodb_table = "terraform-state-lock"
  }
}
