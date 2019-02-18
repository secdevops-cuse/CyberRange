
provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region = "us-east-1"
}


resource "aws_instance" "win2016" {
  ami = "${var.ami_win2016}"
  instance_type = "${var.instance_type}"
  subnet_id = "${var.subnet_id}"
  key_name = "${var.key_name}"
  vpc_security_group_ids = ["${var.secgroup_id}"]
  user_data = "${file("../../cloud-init/windows.setup")}"
  provisioner "file" {
    source      = "./shared"
    destination = "C:/vagrantshared"
    connection {
      type     = "winrm"
      user     = "${var.winrm_user}"
      user     = "${var.winrm_pass}"
      insecure = true
      timeout = "10m"
    }
  }
  provisioner "remote-exec" {
    script      = "C:/vagrantshared/shared/shell/install_choco_puppet.cmd"
    connection {
      type     = "winrm"
      user     = "${var.winrm_user}"
      user     = "${var.winrm_pass}"
      insecure = true
    }
  }

  provisioner "remote-exec" {
    script      = "C:/vagrantshared/shared/shell/install_dependencies.cmd"
    connection {
      type     = "winrm"
      user     = "${var.winrm_user}"
      user     = "${var.winrm_pass}"
      insecure = true
    }
  }
  provisioner "remote-exec" {
    inline = [ "echo 'Installing [ ${var.software} Version: ${var.version_patched} ] via choco'","choco install -y ${var.software} --version=${var.version_patched} --ignore-checksums" ]
    connection {
      type     = "winrm"
      user     = "${var.winrm_user}"
      user     = "${var.winrm_pass}"
      insecure = true
    }
  }

  tags {
    Name = "win2016"
  }
}



resource "aws_instance" "win2016_docker" {
  ami = "ami-2dae053b"
  instance_type = "t2.xlarge"
  subnet_id = "${var.subnet_id}"
  key_name = "${var.key_name}"
  vpc_security_group_ids = ["${var.secgroup_id}"]
  user_data = "${file("../../cloud-init/windows.setup")}"

  provisioner "file" {
    source      = "./shared"
    destination = "C:/vagrantshared/shared"
    connection {
      type     = "winrm"
      user     = "terraform"
      password = "terraform"
      insecure = true
    }
  }
  provisioner "remote-exec" {
    script      = "C:/vagrantshared/shared/shell/install_choco_puppet.cmd"
    connection {
      type     = "winrm"
      user     = "Administrator"
      password = "terraform"
      insecure = true
    }
  }

  provisioner "remote-exec" {
    script      = "C:/vagrantshared/shared/shell/install_dependencies.cmd"
    connection {
      type     = "winrm"
      user     = "Administrator"
      password = "terraform"
      insecure = true
    }
  }
  provisioner "remote-exec" {
    inline = [ "echo 'Installing [ ${var.software} ] via choco'","choco install -y ${var.software}" ]
    connection {
      type     = "winrm"
      user     = "Administrator"
      password = "terraform"
      insecure = true
    }
  }
  tags {
    Name = "win2016_docker"
  }
}



resource "aws_instance" "win2016_sql" {
  ami = "ami-d8a209ce"
  instance_type = "t2.medium"
  subnet_id = "${var.subnet_id}"
  key_name = "${var.key_name}"
  vpc_security_group_ids = ["${var.secgroup_id}"]
  user_data = "${file("../../cloud-init/windows.setup")}"
  tags {
    Name = "win2016_sql"
  }
  provisioner "file" {
    source      = "./shared"
    destination = "C:/vagrantshared"
    connection {
      type     = "winrm"
      user     = "terraform"
      password = "terraform"
    }
  }
  provisioner "remote-exec" {
    script      = "C:/vagrantshared/shared/shell/install_choco_puppet.cmd"
    connection {
      type     = "winrm"
      user     = "Administrator"
      password = "terraform"
      insecure = true
    }
  }

  provisioner "remote-exec" {
    script      = "C:/vagrantshared/shared/shell/install_dependencies.cmd"
    connection {
      type     = "winrm"
      user     = "Administrator"
      password = "terraform"
      insecure = true
    }
  }
  provisioner "remote-exec" {
    inline = [ "echo 'Installing [ ${var.software} ] via choco'","choco install -y ${var.software}" ]
    connection {
      type     = "winrm"
      user     = "Administrator"
      password = "terraform"
      insecure = true
    }
  }
}


resource "aws_instance" "sharepoint_2010" {
  ami = "ami-64903a72"
  instance_type = "m1.medium"
  subnet_id = "${var.subnet_id}"
  key_name = "${var.key_name}"
  vpc_security_group_ids = ["${var.secgroup_id}"]
  user_data = "${file("../../cloud-init/windows.setup")}"
  tags {
    Name = "sharepoint_2010"
  }
  # Copies the folder to a shared folder
  provisioner "file" {
    source      = "./shared/shell/main.cmd"
    destination = "C:/vagrantshared/main.cmd"
    connection {
      type     = "winrm"
      user     = "terraform"
      password = "terraform"
      insecure = true
    }
  }
  provisioner "remote-exec" {
    script      = "C:/vagrantshared/shared/shell/install_choco_puppet.cmd"
    connection {
      type     = "winrm"
      user     = "Administrator"
      password = "terraform"
      insecure = true
    }
  }

  provisioner "remote-exec" {
    script      = "C:/vagrantshared/shared/shell/install_dependencies.cmd"
    connection {
      type     = "winrm"
      user     = "Administrator"
      password = "terraform"
      insecure = true
    }
  }
  provisioner "remote-exec" {
    inline = [ "echo 'Installing [ ${var.software} ] via choco'","choco install -y ${var.software}" ]
    connection {
      type     = "winrm"
      user     = "Administrator"
      password = "terraform"
      insecure = true
    }
  }
}

resource "aws_instance" "win2012R2" {
  ami = "ami-11e84107"
  instance_type = "t2.large"
  subnet_id = "${var.subnet_id}"
  key_name = "${var.key_name}"
  vpc_security_group_ids = ["${var.secgroup_id}"]
  user_data = "${file("../../cloud-init/windows.setup")}"
  provisioner "file" {
    source      = "./shared"
    destination = "C:/vagrantshared"
    connection {
      type     = "winrm"
      user     = "Administrator"
      password = "terraform"
      insecure = true
      timeout = "10m"
    }
  }
  provisioner "remote-exec" {
    script      = "C:/vagrantshared/shared/shell/install_choco_puppet.cmd"
    connection {
      type     = "winrm"
      user     = "Administrator"
      password = "terraform"
      insecure = true
    }
  }
  provisioner "remote-exec" {
    script      = "C:/vagrantshared/shared/shell/install_dependencies.cmd"
    connection {
      type     = "winrm"
      user     = "Administrator"
      password = "terraform"
      insecure = true
    }
  }
  provisioner "remote-exec" {
    inline = [ "echo 'Installing [ ${var.software} ] via choco'","choco install -y ${var.software}" ]
    connection {
      type     = "winrm"
      user     = "Administrator"
      password = "terraform"
      insecure = true
    }
  }
  tags {
    Name = "win2012R2"
  }
}


resource "aws_instance" "win2008R2" {
  ami = "ami-50903a46"
  instance_type = "t2.large"
  subnet_id = "${var.subnet_id}"
  key_name = "${var.key_name}"
  vpc_security_group_ids = ["${var.secgroup_id}"]
  user_data = "${file("../../cloud-init/windows.setup")}"
  provisioner "file" {
    source      = "./shared"
    destination = "C:/vagrantshared"
    connection {
      type     = "winrm"
      user     = "Administrator"
      password = "terraform"
      insecure = true
      timeout = "10m"
    }
  }
  provisioner "remote-exec" {
    script      = "C:/vagrantshared/shared/shell/install_choco_puppet.cmd"
    connection {
      type     = "winrm"
      user     = "Administrator"
      password = "terraform"
      insecure = true
    }
  }

  provisioner "remote-exec" {
    script      = "C:/vagrantshared/shared/shell/install_dependencies.cmd"
    connection {
      type     = "winrm"
      user     = "Administrator"
      password = "terraform"
      insecure = true
    }
  }
  provisioner "remote-exec" {
    inline = [ "echo 'Installing [ ${var.software} ] via choco'","choco install -y ${var.software}" ]
    connection {
      type     = "winrm"
      user     = "Administrator"
      password = "terraform"
      insecure = true
    }
  }

  tags {
    Name = "win2008R2"
  }
}



resource "aws_instance" "win2008_32-bit" {
  ami = "ami-82973d94"
  instance_type = "m2.large"
  subnet_id = "${var.subnet_id}"
  key_name = "${var.key_name}"
  vpc_security_group_ids = ["${var.secgroup_id}"]
  user_data = "${file("../../cloud-init/windows.setup")}"
  provisioner "file" {
    source      = "./shared"
    destination = "C:/vagrantshared"
    connection {
      type     = "winrm"
      user     = "Administrator"
      password = "terraform"
      insecure = true
      timeout = "10m"
    }
  }
  provisioner "remote-exec" {
    script      = "C:/vagrantshared/shared/shell/install_choco_puppet.cmd"
    connection {
      type     = "winrm"
      user     = "Administrator"
      password = "terraform"
      insecure = true
    }
  }

  provisioner "remote-exec" {
    script      = "C:/vagrantshared/shared/shell/install_dependencies.cmd"
    connection {
      type     = "winrm"
      user     = "Administrator"
      password = "terraform"
      insecure = true
    }
  }
  provisioner "remote-exec" {
    inline = [ "echo 'Installing [ ${var.software} ] via choco'","choco install -y ${var.software}" ]
    connection {
      type     = "winrm"
      user     = "Administrator"
      password = "terraform"
      insecure = true
    }
  }

  tags {
    Name = "win2008_32-bit"
  }
}

resource "aws_instance" "win2008_base_64-bit" {
  ami = "ami-eb973dfd"
  instance_type = "t2.large"
  subnet_id = "${var.subnet_id}"
  key_name = "${var.key_name}"
  vpc_security_group_ids = ["${var.secgroup_id}"]
  user_data = "${file("../../cloud-init/windows.setup")}"
  provisioner "file" {
    source      = "./shared"
    destination = "C:/vagrantshared"
    connection {
      type     = "winrm"
      user     = "Administrator"
      password = "terraform"
      insecure = true
      timeout = "10m"
    }
  }
  provisioner "remote-exec" {
    script      = "C:/vagrantshared/shared/shell/install_choco_puppet.cmd"
    connection {
      type     = "winrm"
      user     = "Administrator"
      password = "terraform"
      insecure = true
    }
  }

  provisioner "remote-exec" {
    script      = "C:/vagrantshared/shared/shell/install_dependencies.cmd"
    connection {
      type     = "winrm"
      user     = "Administrator"
      password = "terraform"
      insecure = true
    }
  }
  provisioner "remote-exec" {
    inline = [ "echo 'Installing [ ${var.software} ] via choco'","choco install -y ${var.software}" ]
    connection {
      type     = "winrm"
      user     = "Administrator"
      password = "terraform"
      insecure = true
    }
  }

  tags {
    Name = "win2008_base_64-bit"
  }
}


