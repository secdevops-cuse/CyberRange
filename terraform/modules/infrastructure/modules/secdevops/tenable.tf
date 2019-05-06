locals {
  tenable_subnet_ids = [
    "${var.public-b-subnet-id}",
    "${var.public-a-subnet-id}",
  ]
}

resource "aws_instance" "nessus" {
  count = "${var.kali_ct}"

  ami = "${data.aws_ami.nessus.id}"

  instance_type = "t2.xlarge"

  subnet_id              = "${element(local.tenable_subnet_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.kali.id}"]

  key_name = "${aws_key_pair.circleci_key.key_name}"

  root_block_device {
    delete_on_termination = true
    volume_size           = 120
  }

  tags {
    Name        = "CyberRange-nessus-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_ebs_volume" "nessus-volume" {
  availability_zone = "${aws_instance.kali.availability_zone}"
  type              = "gp2"
  size              = 80
}

resource "aws_volume_attachment" "nessus-volume-attachment" {
  device_name = "/dev/xvdb"
  instance_id = "${aws_instance.nessus.id}"
  volume_id   = "${aws_ebs_volume.nessus-volume.id}"
}

resource "aws_instance" "was" {
  count = "${var.kali_ct}"

  ami = "${data.aws_ami.was.id}"

  instance_type = "${var.instance_type_kali}"

  subnet_id              = "${element(local.tenable_subnet_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.kali.id}"]

  key_name = "${aws_key_pair.circleci_key.key_name}"

  root_block_device {
    delete_on_termination = true
    volume_size           = 250
  }

  tags {
    Name        = "CyberRange-was-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_ebs_volume" "was-volume" {
  availability_zone = "${aws_instance.kali.availability_zone}"
  type              = "gp2"
  size              = 250
}

resource "aws_volume_attachment" "was-volume-attachment" {
  device_name = "/dev/xvdb"
  instance_id = "${aws_instance.was.id}"
  volume_id   = "${aws_ebs_volume.was-volume.id}"
}


resource "aws_instance" "sc" {
  count = "${var.kali_ct}"

  ami = "${data.aws_ami.sc.id}"

//  instance_type = "${var.instance_type_kali}"
  instance_type = "t2.xlarge"

  subnet_id              = "${element(local.tenable_subnet_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.kali.id}"]

  key_name = "${aws_key_pair.circleci_key.key_name}"

  root_block_device {
    delete_on_termination = true
    volume_size           = 250
  }

  tags {
    Name        = "CyberRange-sc-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_ebs_volume" "sc-volume" {
  availability_zone = "${aws_instance.sc.availability_zone}"
  type              = "gp2"
  size              = 125
}

resource "aws_volume_attachment" "sc-volume-attachment" {
  device_name = "/dev/xvdb"
  instance_id = "${aws_instance.sc.id}"
  volume_id   = "${aws_ebs_volume.sc-volume.id}"
}

resource "aws_instance" "nnm" {
  count = "${var.kali_ct}"

  ami = "${data.aws_ami.nnm.id}"

  instance_type = "${var.instance_type_kali}"

  subnet_id              = "${element(local.tenable_subnet_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.kali.id}"]

  key_name = "${aws_key_pair.circleci_key.key_name}"

  root_block_device {
    delete_on_termination = true
    volume_size           = 120
  }

  tags {
    Name        = "CyberRange-nnm-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_ebs_volume" "nnm-volume" {
  availability_zone = "${aws_instance.nnm.availability_zone}"
  type              = "gp2"
  size              = 80
}

resource "aws_volume_attachment" "nnm-volume-attachment" {
  device_name = "/dev/xvdb"
  instance_id = "${aws_instance.nnm.id}"
  volume_id   = "${aws_ebs_volume.nnm-volume.id}"
}
