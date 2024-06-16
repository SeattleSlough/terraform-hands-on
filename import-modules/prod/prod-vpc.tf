module "tf-vpc" {
  source = "../modules"
  environment = "PROD"
}

output "vpc-cidr-block" {
  value = module.tf-vpc.vpc_cidr
}

output "vpc-private-cidr-block" {
  value = module.tf-vpc.private_subnet_cidr
}