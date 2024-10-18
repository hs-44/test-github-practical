# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc

resource "aws_vpc" "terraform_test_vpc" {
  cidr_block           = "172.31.0.0/16"
<<<<<<< HEAD
  enable_dns_hostnames = false
  enable_dns_support   = false
=======
  enable_dns_support   = true
=======

  enable_dns_hostnames = true



>>>>>>> e22f4764cf3dee9fd473c0d5fcf5d7fa66d61139


  tags = {
    Name = "terraform_test_vpc"
  }
}
