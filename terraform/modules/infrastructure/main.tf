module "network" {
  source = "modules/network"

  environment = "${var.environment}"
}
//
//module "databases" {
//  source = "modules/databases"
//
//  environment = "${var.environment}"
//
//  vpc-id              = "${module.network.vpc-id}"
//  vpc-cidr-block      = "${module.network.vpc-cidr-block}"
//  private-a-subnet-id = "${module.network.private-a-subnet-id}"
//  private-b-subnet-id = "${module.network.private-b-subnet-id}"
//}

//module "instances" {
//  source = "modules/instances"
//
//  environment = "${var.environment}"
//
//  vpc-id         = "${module.network.vpc-id}"
//  vpc-cidr-block = "${module.network.vpc-cidr-block}"
//
//  public-a-subnet-id = "${module.network.public-a-subnet-id}"
//  public-b-subnet-id = "${module.network.public-b-subnet-id}"
//
//  db_endpoint = "${module.databases.db_endpoint}"
//}


module "secdevops" {
  source = "modules/secdevops"

  environment = "${var.environment}"

  vpc-id         = "${module.network.vpc-id}"
  vpc-cidr-block = "${module.network.vpc-cidr-block}"

  public-a-subnet-id = "${module.network.public-a-subnet-id}"
  public-b-subnet-id = "${module.network.public-b-subnet-id}"

  private-a-subnet-id = "${module.network.private-a-subnet-id}"
  private-b-subnet-id = "${module.network.private-b-subnet-id}"

}
