locals {
  kali_subnet_ids = [
    "${var.public-b-subnet-id}",
    "${var.public-a-subnet-id}",
  ]
}

resource "aws_instance" "kali" {
  count = "${var.kali_ct}"
  ami = "${var.ami_kali}"
  instance_type = "${var.instance_type_kali}"
  subnet_id              = "${element(local.kali_subnet_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.kali.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"
  user_data = "${file("../../modules/infrastructure/cloud-init/kali.yml")}"

  root_block_device {
    delete_on_termination = true
    volume_size           = 120
  }

  tags {
    Name        = "kali-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_ebs_volume" "kali-volume" {
  availability_zone = "${aws_instance.kali.availability_zone}"
  type              = "gp2"
  size              = 80
}

resource "aws_volume_attachment" "kali-volume-attachment" {
  device_name = "/dev/xvdb"
  instance_id = "${aws_instance.kali.id}"
  volume_id   = "${aws_ebs_volume.kali-volume.id}"
}

resource "null_resource" "kali" {
  count = "1"

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = "${file("../../keys/circleci_terraform")}"
    host        = "${element(aws_instance.kali.*.public_ip, count.index)}"
  }
}

resource "aws_instance" "r7vm" {
  count = "${var.kali_ct}"

  ami = "${var.ami_r7}"

  instance_type = "t2.xlarge"
//  instance_type = "${var.instance_type_kali}"

  subnet_id              = "${element(local.kali_subnet_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.kali.id}"]

  key_name = "${aws_key_pair.circleci_key.key_name}"

  user_data = "${file("../../modules/infrastructure/cloud-init/kali.yml")}"

  root_block_device {
    delete_on_termination = true
    volume_size           = 120
  }

  tags {
    Name        = "r7-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_ebs_volume" "r7-volume" {
  availability_zone = "${aws_instance.kali.availability_zone}"
  type              = "gp2"
  size              = 80
}

resource "aws_volume_attachment" "r7-volume-attachment" {
  device_name = "/dev/xvdb"
  instance_id = "${aws_instance.r7vm.id}"
  volume_id   = "${aws_ebs_volume.r7-volume.id}"
}

resource "aws_instance" "pT16_commando" {
  count = "${var.docker_ct}"
  ami = "${var.ami_win2016}"
//  instance_type = "${var.instance_type_win}"
  instance_type = "t2.2xlarge"
  subnet_id              = "${element(local.kali_subnet_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.kali.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"
  user_data               = "${file("../../modules/infrastructure/cloud-init/bootstrap.commando.yml")}"
  root_block_device {
    delete_on_termination = true
    volume_size           = 150
  }
  tags = {
    Name        = "commando-pT16-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_ebs_volume" "pt16-volume" {
  availability_zone = "${aws_instance.pT16_commando.availability_zone}"
  type              = "gp2"
  size              = 80
}

resource "aws_volume_attachment" "pt16-volume-attachment" {
  device_name = "/dev/xvdb"
  instance_id = "${aws_instance.pT16_commando.id}"
  volume_id   = "${aws_ebs_volume.pt16-volume.id}"
}


//todo: flare-vm  -> https://github.com/fireeye/flare-vm/blob/master/README.md
resource "aws_instance" "flarevm-win7" {
  count         = "${var.docker_ct}"
  ami           = "${var.ami_flarewin7}"
//  instance_type = "${var.instance_type_win}"
  instance_type = "t2.xlarge"
  subnet_id               = "${element(local.kali_subnet_ids, count.index)}"
  vpc_security_group_ids  = ["${aws_security_group.malware.id}"]
  key_name                = "${aws_key_pair.circleci_key.key_name}"
  user_data               = "${file("../../modules/infrastructure/cloud-init/bootstrap.flarevm.yml")}"
//  user_data               = "${file("${var.bootstrap.commando.userdata}")}"
  root_block_device {
    delete_on_termination = true
    volume_size           = 150
  }
  tags = {
    Name        = "flarevm-win7-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}


resource "aws_ebs_volume" "flarevm-volume" {
  availability_zone = "${aws_instance.flarevm-win7.availability_zone}"
  type              = "gp2"
  size              = 80
}

resource "aws_volume_attachment" "flarevm-volume-attachment" {
  device_name = "/dev/xvdb"
  instance_id = "${aws_instance.flarevm-win7.id}"
  volume_id   = "${aws_ebs_volume.flarevm-volume.id}"
}


resource "aws_instance" "pT2010_commando" {
  count = "${var.docker_ct}"
  ami = "${var.ami_win2016}"
  //  instance_type = "${var.instance_type_win}"
  instance_type = "t2.xlarge"
  subnet_id              = "${element(local.kali_subnet_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.kali.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"
  user_data               = "${file("../../modules/infrastructure/cloud-init/bootstrap.commando.yml")}"
  root_block_device {
    delete_on_termination = true
    volume_size              = 150
  }
  tags = {
    Name        = "commando-pT16-${count.index}"
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

resource "aws_ebs_volume" "pT2010-volume" {
  availability_zone = "${aws_instance.pT2010_commando.availability_zone}"
  type              = "gp2"
  size              = 80
}

resource "aws_volume_attachment" "pT2010-volume-attachment" {
  device_name = "/dev/xvdb"
  instance_id = "${aws_instance.pT2010_commando.id}"
  volume_id   = "${aws_ebs_volume.pT2010-volume.id}"
}
