locals {
  kali_subnet_ids = [
    "${var.public-a-subnet-id}",
    "${var.public-b-subnet-id}",
  ]
}


resource "aws_instance" "kali" {
  count = "${var.kali_ct}"

  ami           = "${var.ami_kali}"

  instance_type = "${var.instance_type_kali"

  subnet_id = "${element(local.kali_subnet_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.kali.id}",]

  key_name = "${aws_key_pair.circleci_key.key_name}"

  user_data = "${file("../../modules/infrastructure/cloud-init/kali.yml")}"

  root_block_device {
    delete_on_termination = true
    volume_size = 120
  }

  tags {
    Name = "kali-${count.index}"
    Environment = "${var.environment}"
    Terraform = "True"
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
