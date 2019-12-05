locals {
  tenable_subnet_ids = [
    "${var.attacker_subnet_id}",
    "${var.target_subnet_id}",
  ]
}

resource "aws_instance" "nessus" {
  count = var.kali_ct

  ami = data.aws_ami.nessus.id
  instance_type = var.instance_type_kali
  subnet_id              =element(local.tenable_subnet_ids, count.index)
  vpc_security_group_ids = ["${aws_security_group.kali.id}"]
  key_name = aws_key_pair.circleci_key.key_name

  root_block_device {
    delete_on_termination = true
    volume_size           = 120
  }

  tags = {
    Name        = "CyberRange-nessus-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_instance" "sc" {
  count = var.kali_ct

  ami = data.aws_ami.sc.id
  instance_type = var.instance_type_kali
  subnet_id              = element(local.tenable_subnet_ids, count.index)
  vpc_security_group_ids = ["${aws_security_group.kali.id}"]
  key_name = aws_key_pair.circleci_key.key_name

  root_block_device {
    delete_on_termination = true
    volume_size           = 250
  }

  tags = {
    Name        = "CyberRange-sc-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}


resource "aws_instance" "nnm" {
  count = var.kali_ct

  ami = data.aws_ami.nnm.id 
  instance_type = var.instance_type_kali
  subnet_id              = element(local.tenable_subnet_ids, count.index)
  vpc_security_group_ids = ["${aws_security_group.kali.id}"]
  key_name = aws_key_pair.circleci_key.key_name

  root_block_device {
    delete_on_termination = true
    volume_size           = 120
  }

  tags = {
    Name        = "CyberRange-nnm-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}