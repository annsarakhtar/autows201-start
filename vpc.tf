#Creates the Subnets to be used by F5
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "f5201-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["eu-west-2a"]
  public_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets  = ["10.0.3.0/24"]

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}