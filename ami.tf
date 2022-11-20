module "ami" {
  source      = "github.com/praveenarupi/terraform-immutable-ami"
  APP_VERSION = var.APP_VERSION
  COMPONENT   = "cart"
}

variable "APP_VERSION" {}

terraform {
  backend "s3" {
    bucket = "terraform-p66"
    key    = "ami/cart/terraform.tfstate"
    region = "us-east-1"
  }
}
