#Arquivo principal do Terraform

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.region
}

resource "aws_key_pair" "deployer-aws" {
  key_name   = "deployer-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDXSF37LJQKex+zXfOjuuNQZOJbB4cfOVs7GEscqQgMvwc00akEVnzZepRb/SFeuNrw/Msl+p9VZrI+EjeW95HpPEcMU8t5je3eJymXdfP/gL+dLFbmblki53/sM70QrZ3zgy68oW+c8JneDfokT/jn57A6U4Iq5cPoIxMFHlgT/vDqn1AjmILrp6q+8luJDR1wUgzPTirtiufhffKVgHoE6hxEj7grwLgGiA3QcYGaJsuK06e/msTos/N4XcE8C73PYErvQM9fWZizhromlJBUapLOmBQB+lZmkWoyuG0IEDUKpb28xVyG3mveeEqRz8tLGM1osO9doE+FNSAIkj3E78m1O11RvoI9fK5zS3jxwPT8DcYR4i02IXJ0tvMQbG3ZTGLleC2u4QAt8qdH5cWDbYFAqGsE4tBMWWEcHbtFOdQVqCqVoT9y/nXqiQV1WfJlATIMuff4BEfjYXd+Fn/P5NxWQ46r0t2zzgwjJTRLX1ScU+U3IlcEjXvMe2zVxd8= eliziersantos@Eliziers-MacBook-Pro.local"
}

module "buckets" {
  source = "./modules/s3"
}
