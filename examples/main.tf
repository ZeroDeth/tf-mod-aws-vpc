provider "aws" {
  version = "~> 1.0"
  region = "eu-central-1"
}

module "vpc" {
  source = "../"

  name = "bossa-stack"

  cidr = "10.30.0.0/16"

  availability_zones = ["eu-central-1a", "eu-central-1b", "eu-central-1c"]
  private_subnets    = ["10.30.0.0/19", "10.30.64.0/19", "10.30.128.0/19"]
  public_subnets     = ["10.30.32.0/20", "10.30.96.0/20", "10.30.160.0/20"]

}
