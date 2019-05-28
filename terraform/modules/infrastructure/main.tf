module "network" {
  source = "./modules/network"
  environment = "${var.environment}"
}

module "secdevops" {
  source = "./modules/secdevops"

  environment = "${var.environment}"

  vpc-id         = "${module.network.vpc-id}"
  vpc-cidr-block = "${module.network.vpc-cidr-block}"

  public-a-subnet-id = "${module.network.public-a-subnet-id}"
  public-b-subnet-id = "${module.network.public-b-subnet-id}"

  private-a-subnet-id = "${module.network.private-a-subnet-id}"
  private-b-subnet-id = "${module.network.private-b-subnet-id}"

}
