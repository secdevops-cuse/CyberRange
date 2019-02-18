locals {
  subnets_ids = [
    "${var.public-a-subnet-id}",
    "${var.public-b-subnet-id}",
  ]
}

resource "aws_instance" "tpot" {
  count = "${var.kali_ct}"

  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "${var.tpot_instance_type}"

  subnet_id = "${element(local.subnets_ids, count.index)}"

  vpc_security_group_ids = ["${aws_security_group.tpot.id}"]

  key_name = "${aws_key_pair.circleci_key.key_name}"

  root_block_device {
    volume_type = "gp2"
    volume_size = "${var.tpot_root_vol_size}"
    delete_on_termination = "true"
  }

  tags {
    Name = "tpot-${count.index}"
    Environment = "${var.environment}"
    Terraform = "True"
    Zombie = "True"
  }
}

resource "null_resource" "tpot" {
  count = "${var.kali_ct}"

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = "${file("../../keys/circleci_terraform")}"
    host        = "${element(aws_instance.tpot.*.public_ip, count.index)}"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt update ",
      "sudo apt install -y git ",
      "git clone https://github.com/dtag-dev-sec/t-pot-autoinstall.git",
      "cd t-pot-autoinstall/",
      "sudo su",
      "./install.sh",
    ]
  }
}

//resource "null_resource" "tpot_tag_as_complete" {
//  depends_on = ["null_resource.tpot"]
//  tags {
//    Zombie = "False"
//    Complete = "True"
//  }
//}