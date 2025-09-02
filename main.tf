# Root main.tf for 3-tier project

# Network module
module "network" {
  source = "./modules/network"
}

# Compute module
module "compute" {
  source           = "./modules/compute"
  vpc_id           = module.network.vpc_id                    # updated
  public_subnet_id = module.network.public_subnet_ids[0]      # pick first public subnet
}

# Database module
module "database" {
  source             = "./modules/database"
  vpc_id             = module.network.vpc_id                 # updated
  private_subnet_ids = module.network.private_subnet_ids      # updated to list
  rds_sg_id          = module.compute.ec2_security_group_id
}

