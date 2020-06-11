module "network" {
  source = "./network"
  environment = "${var.environment}"
  cidr = "${var.cidr}"
}

module "secdevops" {
  source = "./secdevops"

  environment = "${var.environment}"
  vpc-id         = "${module.network.vpc-id}"
  vpc-cidr-block = "${module.network.vpc-cidr-block}"
  cidr = "${module.network.cidr}"

  target_subnet_id = "${module.network.target_subnet_id}"
  attacker_subnet_id = "${module.network.attacker_subnet_id}"
  honeypot_subnet_id = "${module.network.honeypot_subnet_id}"
  malware_subnet_id = "${module.network.malware_subnet_id}"
  private-a-subnet-id = "${module.network.private-a-subnet-id}"
  private-b-subnet-id = "${module.network.private-b-subnet-id}"
}


//module "lambda" {
//  source  = "spring-media/lambda/aws"
//  version = "5.1.0"
//  function_name = ""
//  handler = ""
//  runtime = ""
//  description = "Implement automated cost-savings & shutdown the range every x hours"
//  filename = ""
//  //  source_code_hash = filebase64sha256("file.zip")
//  tags = {
//    Name        = "lambda-shutdown-instances"
//    Environment = "${var.environment}"
//    Terraform   = "True"
//  }
//}