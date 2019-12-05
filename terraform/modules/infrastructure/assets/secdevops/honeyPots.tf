locals {
  subnets_ids = [
    "${var.honeypot_subnet_id}",
  ]
}

resource "aws_instance" "tpot-full-build" {
  count = var.tpot_ct

  ami           = data.aws_ami.debianstretch.id
  instance_type = var.instance_type_tpot
  subnet_id = element(local.subnets_ids, count.index)
  vpc_security_group_ids = ["${aws_security_group.tpot.id}"]
  key_name = aws_key_pair.circleci_key.key_name
  user_data = file("../../modules/infrastructure/cloud-init/tpot.setup.yml")

  root_block_device {
    volume_type = "gp2"
    volume_size = var.tpot_root_vol_size
    delete_on_termination = "true"
  }

  tags = {
    Name = "Tpot-${count.index}"
    Environment = "${var.environment}"
    Terraform = "True"
  }
}


resource "aws_instance" "tpot" {
  count = var.tpot_ct

  ami = data.aws_ami.tpot.id
  instance_type = var.instance_type_tpot
  subnet_id = element(local.subnets_ids, count.index)
  vpc_security_group_ids = ["${aws_security_group.tpot.id}"]
  key_name = aws_key_pair.circleci_key.key_name

  root_block_device {
    volume_type = "gp2"
    volume_size = var.tpot_root_vol_size
    delete_on_termination = "true"
  }

  tags = {
    Name = "Tpot-${count.index}"
    Environment = "${var.environment}"
    Terraform = "True"
  }
}