module "vpc" {
  source = "./modules/rede"

  vpc_cidr = "192.168.0.0/16"
}