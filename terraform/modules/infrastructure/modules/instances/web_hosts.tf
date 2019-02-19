locals {
  web_subnets_ids = [
    "${var.public-a-subnet-id}",
    "${var.public-b-subnet-id}",
  ]
}

data "template_file" "init" {
  template = "${file("${path.module}/templates/init.tpl")}"

  vars {
    db_endpoint = "${var.db_endpoint}"
    db_port     = 3306
    db_name     = "${var.environment}"
    db_username = "username"
    db_password = "password"
  }
}

data "template_file" "instance-status" {
  template = "${file("${path.module}/templates/instance-status.tpl")}"
}

resource "aws_instance" "web" {
  count = "${var.web_count}"

  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"

  subnet_id = "${element(local.web_subnets_ids, count.index)}"

  vpc_security_group_ids = [
    "${aws_security_group.web.id}",
  ]

  key_name = "${aws_key_pair.circleci_key.key_name}"

  tags {
    Name = "web-${count.index}"
    Environment = "${var.environment}"
    Terraform = "True"
  }
}

resource "null_resource" "web" {
  count = "${var.web_count}"

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = "${file("../../keys/circleci_terraform")}"
    host        = "${element(aws_instance.web.*.public_ip, count.index)}"
  }

  provisioner "file" {
    content     = "${data.template_file.init.rendered}"
    destination = "/home/ubuntu/init.sh"
  }

  provisioner "file" {
    content     = "${data.template_file.instance-status.rendered}"
    destination = "/home/ubuntu/instance-status.conf"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /home/ubuntu/init.sh",
      "sudo /home/ubuntu/init.sh",
    ]
  }
}
