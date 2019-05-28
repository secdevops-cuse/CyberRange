locals {
  scanner_subnet_ids = [
    "${var.public-b-subnet-id}",
    "${var.public-a-subnet-id}",
  ]
}

resource "aws_instance" "r7vm" {
  count = "${var.kali_ct}"

  ami = "${data.aws_ami.r7.id}"

//  instance_type = "t2.xlarge"
  instance_type = "${var.instance_type_kali}"

  subnet_id              = "${element(local.scanner_subnet_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.kali.id}"]

  key_name = "${aws_key_pair.circleci_key.key_name}"

  user_data = "${file("../../modules/infrastructure/cloud-init/kali.yml")}"

  root_block_device {
    delete_on_termination = true
    volume_size           = 120
  }

  tags = {
    Name        = "CyberRange-r7-${count.index}"
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
