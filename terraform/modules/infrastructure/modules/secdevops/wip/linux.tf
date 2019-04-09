resource "aws_instance" "centos7" {
  ami = "ami-6d1c2007"
  instance_type = "${var.instance_type}"
  subnet_id              = "${element(local.cyberRange_subnets_ids, count.index)}"
  key_name = "${aws_key_pair.circleci_key.key_name}"
  vpc_security_group_ids = ["${aws_security_group.webgoat.id}"]
  // user_data = "${file("${var.linux_user_data}")}"

  tags {
    Name = "centos7",
  }
  provisioner "file" {
    source      = "../shared/linux"
    destination = "/home/centos/shared"
    connection {
      type     = "ssh"
      user     = "centos"
      private_key = "${file("${var.private_key}")}"
      insecure = true
    }
  }
}


resource "aws_instance" "ubuntu1604" {
  ami = "ami-3267bb24"
  instance_type = "${var.instance_type}"
  subnet_id              = "${element(local.cyberRange_subnets_ids, count.index)}"
  key_name = "${aws_key_pair.circleci_key.key_name}"
  vpc_security_group_ids = ["${aws_security_group.webgoat.id}"]
  // user_data = "${file("${var.linux_user_data}")}"

  tags {
    Name = "ubuntu1604"
  }
  provisioner "file" {
    source      = "../shared/linux"
    destination = "/home/ubuntu/shared"
    connection {
      type     = "ssh"
      user     = "ubuntu"
      private_key = "${file("${var.private_key}")}"
      insecure = true
    }
  }
}

resource "aws_instance" "ubuntu1404" {
  ami = "ami-a95044be"
  instance_type = "${var.instance_type}"
  subnet_id              = "${element(local.cyberRange_subnets_ids, count.index)}"
  key_name = "${aws_key_pair.circleci_key.key_name}"
  vpc_security_group_ids = ["${aws_security_group.webgoat.id}"]
  // user_data = "${file("${var.linux_user_data}")}"

  tags {
    Name = "ubuntu1404"
  }
  provisioner "file" {
    source      = "../shared/linux"
    destination = "/home/ubuntu/shared"
    connection {
      type     = "ssh"
      user     = "ubuntu"
      private_key = "${file("${var.private_key}")}"
      insecure = true
    }
  }
}

resource "aws_instance" "ubuntu1204" {
  ami = "ami-089b441e"
  instance_type = "${var.instance_type}"
  subnet_id              = "${element(local.cyberRange_subnets_ids, count.index)}"
  key_name = "${aws_key_pair.circleci_key.key_name}"
  vpc_security_group_ids = ["${aws_security_group.webgoat.id}"]
  // user_data = "${file("${var.linux_user_data}")}"

  tags {
    Name = "ubuntu1204"
  }
  provisioner "file" {
    source      = "../shared/linux"
    destination = "/home/ubuntu/shared"
    connection {
      type     = "ssh"
      user     = "ubuntu"
      private_key = "${file("${var.private_key}")}"
      insecure = true
    }
  }
}

resource "aws_instance" "debian8" {
  ami = "ami-cb4b94dd"
  instance_type = "${var.instance_type}"
  subnet_id              = "${element(local.cyberRange_subnets_ids, count.index)}"
  key_name = "${aws_key_pair.circleci_key.key_name}"
  vpc_security_group_ids = ["${aws_security_group.webgoat.id}"]
  // user_data = "${file("${var.linux_user_data}")}"

  tags {
    Name = "debian8"
  }
  provisioner "file" {
    source      = "../shared/linux"
    destination = "/home/admin/shared"
    connection {
      type     = "ssh"
      user     = "admin"
      private_key = "${file("${var.private_key}")}"
      insecure = true
    }
  }
}

resource "aws_instance" "suse12" {
  ami = "ami-48b63120"
  instance_type = "${var.instance_type}"
  subnet_id              = "${element(local.cyberRange_subnets_ids, count.index)}"
  key_name = "${aws_key_pair.circleci_key.key_name}"
  vpc_security_group_ids = ["${aws_security_group.webgoat.id}"]
  // user_data = "${file("${var.linux_user_data}")}"

  tags {
    Name = "suse12"
  }
  provisioner "file" {
    source      = "../shared/linux"
    destination = "/home/ec2-user/shared"
    connection {
      type     = "ssh"
      user     = "ec2-user"
      private_key = "${file("${var.private_key}")}"
      insecure = true
    }
  }
}

resource "aws_instance" "suse11" {
  ami = "ami-7f2e6015"
  instance_type = "${var.instance_type}"
  subnet_id              = "${element(local.cyberRange_subnets_ids, count.index)}"
  key_name = "${aws_key_pair.circleci_key.key_name}"
  vpc_security_group_ids = ["${aws_security_group.webgoat.id}"]
  // user_data = "${file("${var.linux_user_data}")}"

  tags {
    Name = "suse11"
  }
  provisioner "file" {
    source      = "../shared/linux"
    destination = "/home/ec2-user/shared"
    connection {
      type     = "ssh"
      user     = "ec2-user"
      private_key = "${file("${var.private_key}")}"
      insecure = true
    }
  }
}

resource "aws_instance" "amazon_ecs_ami" {
  ami = "ami-92659c84"
  instance_type = "${var.instance_type}"
  subnet_id              = "${element(local.cyberRange_subnets_ids, count.index)}"
  key_name = "${aws_key_pair.circleci_key.key_name}"
  vpc_security_group_ids = ["${aws_security_group.webgoat.id}"]
  // user_data = "${file("${var.linux_user_data}")}"

  tags {
    Name = "amazon_ecs_ami"
  }
  provisioner "file" {
    source      = "../shared/linux"
    destination = "/home/ec2-user/shared"
    connection {
      type     = "ssh"
      user     = "ec2-user"
      private_key = "${file("${var.private_key}")}"
      insecure = true
    }
  }
}

resource "aws_instance" "amazon_hvm_ami" {
  ami = "ami-0b33d91d"
  instance_type = "${var.instance_type}"
  subnet_id              = "${element(local.cyberRange_subnets_ids, count.index)}"
  key_name = "${aws_key_pair.circleci_key.key_name}"
  vpc_security_group_ids = ["${aws_security_group.webgoat.id}"]
  // user_data = "${file("${var.linux_user_data}")}"

  tags {
    Name = "amazon_hvm_ami"
  }
  provisioner "file" {
    source      = "../shared/linux"
    destination = "/home/ec2-user/shared"
    connection {
      type     = "ssh"
      user     = "ec2-user"
      private_key = "${file("${var.private_key}")}"
      insecure = true
    }
  }
}

resource "aws_instance" "rhel7" {
  ami = "ami-a8d369c0"
  instance_type = "${var.instance_type}"
  subnet_id              = "${element(local.cyberRange_subnets_ids, count.index)}"
  key_name = "${aws_key_pair.circleci_key.key_name}"
  vpc_security_group_ids = ["${aws_security_group.webgoat.id}"]
  // user_data = "${file("${var.linux_user_data}")}"

  tags {
    Name = "rhel7"
  }
  provisioner "file" {
    source      = "../shared/linux"
    destination = "/home/ec2-user/shared"
    connection {
      type     = "ssh"
      user     = "ec2-user"
      private_key = "${file("${var.private_key}")}"
      insecure = true
    }
  }
}

resource "aws_instance" "rhel6_5" {
  ami = "ami-1643ff7e"
  instance_type = "${var.instance_type}"
  subnet_id              = "${element(local.cyberRange_subnets_ids, count.index)}"
  key_name = "${aws_key_pair.circleci_key.key_name}"
  vpc_security_group_ids = ["${aws_security_group.webgoat.id}"]
  // user_data = "${file("${var.linux_user_data}")}"

  tags {
    Name = "rhel6.5"
  }
  provisioner "file" {
    source      = "../shared/linux"
    destination = "/home/ec2-user/shared"
    connection {
      type     = "ssh"
      user     = "ec2-user"
      private_key = "${file("${var.private_key}")}"
      insecure = true
    }
  }
}

resource "aws_instance" "rhel5" {
  ami = "ami-4c6ad824"
  instance_type = "${var.instance_type}"
  subnet_id              = "${element(local.cyberRange_subnets_ids, count.index)}"
  key_name = "${aws_key_pair.circleci_key.key_name}"
  vpc_security_group_ids = ["${aws_security_group.webgoat.id}"]
  // user_data = "${file("${var.linux_user_data}")}"

  tags {
    Name = "rhel5"
  }
  provisioner "file" {
    source      = "../shared/linux"
    destination = "/home/root/shared"
    connection {
      type     = "ssh"
      user     = "root"
      private_key = "${file("${var.private_key}")}"
      insecure = true
    }
  }
}

resource "aws_instance" "kali-linux" {
  ami = "${var.ami_kali}"
  instance_type = "${var.instance_type_kali}"
  subnet_id              = "${element(local.cyberRange_subnets_ids, count.index)}"
  key_name = "${aws_key_pair.circleci_key.key_name}"
  vpc_security_group_ids = ["${aws_security_group.webgoat.id}"]
  // user_data = "${file("${var.linux_user_data}")}"

  tags {
    Name = "kali-linux"
  }
  provisioner "file" {
    source      = "../shared/linux"
    destination = "/home/ec2-user/shared"
    connection {
      type     = "ssh"
      user     = "ec2-user"
      private_key = "${file("${var.private_key}")}"
      insecure = true
    }
  }
}

resource "aws_instance" "coreos" {
  ami = "ami-f29843e4"
  instance_type = "${var.instance_type}"
  subnet_id              = "${element(local.cyberRange_subnets_ids, count.index)}"
  key_name = "${aws_key_pair.circleci_key.key_name}"
  vpc_security_group_ids = ["${aws_security_group.webgoat.id}"]
  // user_data = "${file("${var.linux_user_data}")}"

  tags {
    Name = "coreos"
  }
  provisioner "file" {
    source      = "../shared/linux"
    destination = "/home/core/shared"
    connection {
      type     = "ssh"
      user     = "core"
      private_key = "${file("${var.private_key}")}"
      insecure = true
    }
  }
}

resource "aws_instance" "opensuse42_2" {
  ami = "ami-eada30fc"
  instance_type           = "${var.instance_type}"
  subnet_id               = "${element(local.cyberRange_subnets_ids, count.index)}"
  key_name                = "${aws_key_pair.circleci_key.key_name}"
  vpc_security_group_ids = ["${aws_security_group.webgoat.id}"]
  // user_data = "${file("${var.linux_user_data}")}"

  tags {
    Name = "opensuse42_2"
  }
  provisioner "file" {
    source      = "../shared/linux"
    destination = "/home/ec2-user/shared"
    connection {
      type     = "ssh"
      user     = "ec2-user"
      private_key = "${file("${var.private_key}")}"
      insecure = true
    }
  }
}

