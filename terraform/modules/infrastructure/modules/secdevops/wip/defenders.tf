locals {
  defender_subnets_ids = [
    "${var.public-a-subnet-id}",
    "${var.public-b-subnet-id}",
  ]
}


resource "aws_instance" "logger" {
  instance_type = "t2.medium"
  ami = "ami-0ad16744583f21877"
  tags {
    Name = "logger"
  }
  subnet_id = "${element(local.defender_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.logger.id}"]
  key_name = "${aws_key_pair.circleci_key.key_name}"
  private_ip = "10.0.1.105"
  # Provision the AWS Ubuntu 16.04 AMI from scratch.
  provisioner "remote-exec" {
    inline = [
      "sudo add-apt-repository universe && sudo apt-get update && sudo apt-get install -y git",
      "echo 'logger' | sudo tee /etc/hostname && sudo hostnamectl set-hostname logger",
      "sudo adduser --disabled-password --gecos \"\" vagrant && echo 'vagrant:vagrant' | sudo chpasswd",
      "echo 'vagrant    ALL=(ALL:ALL) NOPASSWD:ALL' | sudo tee -a /etc/sudoers",
      "sudo git clone https://github.com/clong/DetectionLab.git /opt/DetectionLab",
      "sudo sed -i \"s#sed -i 's/archive.ubuntu.com/us.archive.ubuntu.com/g' /etc/apt/sources.list##g\" /opt/DetectionLab/Vagrant/bootstrap.sh",
      "sudo sed -i 's/eth1/eth0/g' /opt/DetectionLab/Vagrant/bootstrap.sh",
      "sudo sed -i 's/ETH1/ETH0/g' /opt/DetectionLab/Vagrant/bootstrap.sh",
      "sudo sed -i 's#/usr/local/go/bin/go get -u#GOPATH=/root/go /usr/local/go/bin/go get -u#g' /opt/DetectionLab/Vagrant/bootstrap.sh",
      "sudo sed -i 's#/vagrant/resources#/opt/DetectionLab/Vagrant/resources#g' /opt/DetectionLab/Vagrant/bootstrap.sh",
      "sudo chmod +x /opt/DetectionLab/Vagrant/bootstrap.sh",
      "sudo apt-get update",
      "sudo /opt/DetectionLab/Vagrant/bootstrap.sh",
      "sudo pip3.6 install --upgrade --force-reinstall pip==9.0.3 && sudo pip3.6 install -r /home/vagrant/caldera/caldera/requirements.txt && sudo pip3.6 install --upgrade pip",
      "sudo service caldera stop && sudo service caldera start"
    ]
    connection {
      type = "ssh"
      user = "ubuntu"
      private_key = "${file("${var.private_key_path}")}"
    }
  }
  root_block_device {
    delete_on_termination = true
    volume_size = 64
  }
}

resource "aws_instance" "dc" {
  instance_type = "t2.medium"
  ami = "${data.aws_ami.dc_ami.image_id}"
  tags {
    Name = "dc.windomain.local"
  }
  subnet_id = "${element(local.defender_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.windows.id}"]
  private_ip = "10.0.1.102"
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
  root_block_device {
    delete_on_termination = true
  }
}

resource "aws_instance" "wef" {
  instance_type = "t2.medium"
  ami = "${data.aws_ami.wef_ami.image_id}"
  tags {
    Name = "wef.windomain.local"
  }
  subnet_id = "${element(local.defender_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.windows.id}"]
  private_ip = "10.0.1.103"
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
  root_block_device {
    delete_on_termination = true
  }
}

resource "aws_instance" "win10" {
  instance_type = "t2.medium"
  ami = "${data.aws_ami.win10_ami.image_id}"
  tags {
    Name = "win10.windomain.local"
  }
  subnet_id = "${element(local.defender_subnets_ids, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.windows.id}"]
  private_ip = "10.0.1.104"
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
  root_block_device {
    delete_on_termination = true
  }
}