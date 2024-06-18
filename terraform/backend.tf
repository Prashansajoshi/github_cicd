terraform {
  backend "s3" {
    region = "us-east-1"
    key    = "426857564226/prashansa_node_CICD_TF.tfstate"
    bucket = "8586-terraform-state"
  }
}
  
