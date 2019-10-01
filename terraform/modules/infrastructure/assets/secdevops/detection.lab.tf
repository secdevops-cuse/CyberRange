locals {
  cyberRange_detection_subnets_ids = [
    "${var.attacker_subnet_id}",
    "${var.target_subnet_id}",
  ]
}


resource "aws_instance" "dl-wef" {
  count = "${var.docker_ct}"
  ami           = "${data.aws_ami.detection-wef.id}"
  instance_type = "${var.instance_type_tpot}"
  subnet_id              = "${element(local.cyberRange_detection_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.windows.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"
  private_ip             = "192.168.38.103"

  root_block_device {
    delete_on_termination = true
  }
  tags = {
    Name = "wef.windomain.local"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_instance" "dl-dc" {
  count = "${var.docker_ct}"
  ami           = "${data.aws_ami.detection-dc.id}"
  instance_type = "${var.instance_type_tpot}"
  subnet_id              = "${element(local.cyberRange_detection_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.windows.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"
  private_ip             = "192.168.38.102"

  root_block_device {
    delete_on_termination = true
  }
  tags = {
    Name = "dc.windomain.local"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}
resource "aws_instance" "dl-win10" {
  count = "${var.docker_ct}"
  ami           = "${data.aws_ami.detection-dc.id}"
  instance_type = "${var.instance_type_tpot}"
  subnet_id              = "${element(local.cyberRange_detection_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.windows.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"
  private_ip             = "192.168.38.104"

  root_block_device {
    delete_on_termination = true
  }
  tags = {
    Name = "win10.windomain.local"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_instance" "dl-logger" {
  count = "${var.docker_ct}"
  instance_type = "${var.instance_type_tpot}"
  ami           = "${data.aws_ami.logger_ami.image_id}"

  tags = {
    Name = "dl.logger"
  }

  subnet_id              = "${element(local.cyberRange_detection_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.logger.id}"]
  key_name               = "${aws_key_pair.circleci_key.key_name}"
  private_ip             = "192.168.38.105"


  root_block_device {
      delete_on_termination = true
      volume_size           = 64
    }
}


# Adjust VPC DNS settings to not conflict with lab
resource "aws_vpc_dhcp_options" "default" {
  domain_name          = "windomain.local"
  domain_name_servers  = concat([aws_instance.dl-dc[0].private_ip], var.external_dns_servers)
  netbios_name_servers = [aws_instance.dl-dc[0].private_ip]
}

resource "aws_vpc_dhcp_options_association" "default" {
vpc_id          = var.vpc-id
dhcp_options_id = aws_vpc_dhcp_options.default.id
}

