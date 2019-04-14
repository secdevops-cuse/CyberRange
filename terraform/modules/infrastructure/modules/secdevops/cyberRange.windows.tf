locals {
  cyberRange_windows_subnets_ids = [
    "${var.public-a-subnet-id}",
    "${var.public-b-subnet-id}",
  ]
}

resource "aws_instance" "cr_ms3_2k8" {
  count = "${var.docker_ct}"

  ami           = "${var.ami_ms3_2k8}"
  instance_type = "${var.instance_type_win}"

  subnet_id              = "${element(local.cyberRange_windows_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.webgoat.id}"]

  key_name = "${aws_key_pair.circleci_key.key_name}"

  root_block_device {
    delete_on_termination = true
  }

  tags = {
    Name        = "CyberRange MetaSploitable 3 win2k8-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_instance" "ami_ms3_2k12" {
  count = "${var.docker_ct}"
  ami           = "${var.ami_ms3_2k12}"
  instance_type = "${var.instance_type_win}"
  subnet_id              = "${element(local.cyberRange_windows_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.webgoat.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"
  root_block_device {
    delete_on_termination = true
  }

  provisioner "remote-exec" {
    connection = {
      type     = "winrm"
      user     = "vagrant"
      password = "vagrant"
      agent    = "false"
      insecure = "true"
    }
    inline = [
      "powershell -command \"$newDNSServers = @('10.0.1.102','8.8.8.8'); $adapters = Get-WmiObject Win32_NetworkAdapterConfiguration | Where-Object {$_.IPAddress -match '10.0.1.'}; $adapters | ForEach-Object {$_.SetDNSServerSearchOrder($newDNSServers)}\"",
    ]
  }

  tags = {
    Name        = "CyberRange MS3 win2k12-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_instance" "win2016" {
  count = "${var.docker_ct}"
  ami = "${var.ami_win2016}"
  instance_type = "${var.instance_type_win}"
  subnet_id              = "${element(local.cyberRange_windows_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.webgoat.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"
  user_data = "${file("../../cloud-init/windows.setup")}"
  root_block_device {
    delete_on_termination = true
  }
  tags = {
    Name        = "CyberRange win2016-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_instance" "win7" {
  count = "${var.docker_ct}"
  ami           = "${var.ami_win7}"
  instance_type = "${var.instance_type}"
  subnet_id              = "${element(local.cyberRange_windows_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.webgoat.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"
  root_block_device {
    delete_on_termination = true
  }
  tags = {
    Name        = "CyberRange win7-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_instance" "win8" {
  count = "${var.docker_ct}"
  ami           = "${var.ami_win8}"
  instance_type = "${var.instance_type}"
  subnet_id              = "${element(local.cyberRange_windows_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.webgoat.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"
  root_block_device {
    delete_on_termination = true
  }
  tags = {
    Name        = "CyberRange win8-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_instance" "defender_win2k10" {
  count = "${var.docker_ct}"
  ami           = "${var.ami_defender_win2k10}"
  instance_type = "${var.instance_type}"
  subnet_id              = "${element(local.cyberRange_windows_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.webgoat.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"
  root_block_device {
    delete_on_termination = true
  }
  tags = {
    Name        = "CyberRange defender_win2k10-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_instance" "win8" {
  count = "${var.docker_ct}"
  ami           = "${var.ami_win8}"
  instance_type = "${var.instance_type}"
  subnet_id              = "${element(local.cyberRange_windows_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.webgoat.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"
  root_block_device {
    delete_on_termination = true
  }
  tags = {
    Name        = "CyberRange win8-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_instance" "win2003" {
  count = "${var.docker_ct}"
  ami           = "${var.ami_win2003}"
  instance_type = "${var.instance_type}"
  subnet_id              = "${element(local.cyberRange_windows_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.webgoat.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"
  root_block_device {
    delete_on_termination = true
  }
  tags = {
    Name        = "CyberRange win2003-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_instance" "win2008" {
  count = "${var.docker_ct}"
  ami           = "${var.ami_win2008}"
  instance_type = "${var.instance_type}"
  subnet_id              = "${element(local.cyberRange_windows_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.webgoat.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"
  root_block_device {
    delete_on_termination = true
  }
  tags = {
    Name        = "CyberRange win2008-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_instance" "win2012" {
  count = "${var.docker_ct}"
  ami           = "${var.ami_win2012}"
  instance_type = "${var.instance_type}"
  subnet_id              = "${element(local.cyberRange_windows_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.webgoat.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"
  root_block_device {
    delete_on_termination = true
  }
  tags = {
    Name        = "CyberRange win2012-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_instance" "win2012_RTM" {
  count = "${var.docker_ct}"
  ami           = "${var.ami_win2012_RTM}"
  instance_type = "${var.instance_type}"
  subnet_id              = "${element(local.cyberRange_windows_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.webgoat.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"
  root_block_device {
    delete_on_termination = true
  }
  tags = {
    Name        = "CyberRange win2012_RTM-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_instance" "win2016" {
  count = "${var.docker_ct}"
  ami           = "${var.ami_win2016}"
  instance_type = "${var.instance_type}"
  subnet_id              = "${element(local.cyberRange_windows_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.webgoat.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"
  root_block_device {
    delete_on_termination = true
  }
  tags = {
    Name        = "CyberRange win2016-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_instance" "win2019" {
  count = "${var.docker_ct}"
  ami           = "${var.ami_win2019}"
  instance_type = "${var.instance_type}"
  subnet_id              = "${element(local.cyberRange_windows_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.webgoat.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"
  root_block_device {
    delete_on_termination = true
  }
  tags = {
    Name        = "CyberRange win2019-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}
