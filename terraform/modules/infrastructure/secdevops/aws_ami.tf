
data "aws_ami" "ubuntu" {
  most_recent = true
  owners = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
  }
}


//data "aws_ami" "debianstretch" {
//  most_recent       = true
//  owners            = ["679593333241"]
//
//  filter {
//    name   = "name"
////    values = ["debian-stretch-hvm-x86_64-*"]
//    values = ["debian-stretch-*"]
//  }
//}

data "aws_ami" "debianbuster" {
  most_recent       = true
  owners            = ["136693071363"]

  filter {
    name   = "name"
    values = ["debian-10-amd64-*"]
  }
}


data "aws_ami" "cuckoo-host" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["099720109477"] # Canonical
}

data "aws_ami" "ubuntu1604" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-*-16.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["099720109477"] # Canonical
}


//data "aws_ami" "centos" {
//  most_recent = true
//  owners = ["679593333241"]
//  name_regex       = ".*CentOS Linux 7 x86_64 HVM EBS.*"
//}

data "aws_ami" "fristileaks" {
  most_recent      = true
  name_regex       = ".*FristiLeaks_1.*"
  owners           = ["588675961644"]
}

data "aws_ami" "mrrobot" {
  most_recent      = true
  name_regex       = ".*mrRobot.*"
  owners           = ["588675961644"]
}

data "aws_ami" "sickos" {
  most_recent      = true
  name_regex       = ".*Sick0s1.2.*"
  owners           = ["588675961644"]
}

data "aws_ami" "vulnos" {
  most_recent      = true
  name_regex       = ".*VulnOSv2.*"
  owners           = ["588675961644"]
}

data "aws_ami" "stapler" {
  most_recent      = true
  name_regex       = ".*Stapler.*"
  owners           = ["588675961644"]
}

data "aws_ami" "ms3_2k8" {
  most_recent      = true
  name_regex       = ".*metasploitable3-win2k8.*"
  owners           = ["588675961644"]
}

data "aws_ami" "ms3_nix" {
  most_recent      = true
  name_regex       = ".*metasploitable3-ubuntu-1404.*"
  owners           = ["588675961644"]
}

data "aws_ami" "ms3_2k12" {
  most_recent      = true
  name_regex       = ".*metasploitable3-win2k12.*"
  owners           = ["588675961644"]
}

data "aws_ami" "skytower" {
  most_recent      = true
  name_regex       = ".*SkyTower.*"
  owners           = ["588675961644"]
}

data "aws_ami" "kali" {
  most_recent      = true
  name_regex       = ".*kali-2019.4-essentials*"
  owners           = ["588675961644"]
}

data "aws_ami" "win7" {
  most_recent      = true
  name_regex       = "^Win7$"
  owners           = ["588675961644"]
}

data "aws_ami" "win8" {
  most_recent      = true
  name_regex       = ".*Win8.*"
  owners           = ["588675961644"]
}

data "aws_ami" "seed_ubuntu1604" {
most_recent      = true
name_regex       = ".*seed-ubuntu-1604.*"
owners           = ["588675961644"]
}

data "aws_ami" "hackinos" {
most_recent      = true
name_regex       = ".*hack-in-os.*"
owners           = ["588675961644"]
}

data "aws_ami" "myhouse7" {
most_recent      = true
name_regex       = ".*myhouse7.*"
owners           = ["588675961644"]
}

data "aws_ami" "bulldog" {
most_recent      = true
name_regex       = ".*bulldog.*"
owners           = ["588675961644"]
}

data "aws_ami" "win2k10" {
most_recent      = true
name_regex       = ".*win2010.*"
owners           = ["588675961644"]
}


data "aws_ami" "win2k12" {
  most_recent = true
  owners = ["amazon"]

  filter {
    name   = "name"
    values = ["*2012-RTM-English-64Bit-SQL_2012_SP4_Express*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

data "aws_ami" "win2k12_RTM" {
  most_recent = true
  owners = ["amazon"]

  filter {
    name   = "name"
    values = ["*2012-R2_RTM-English-64Bit-SQL_2016_SP2_Express*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

data "aws_ami" "win2k16" {
  most_recent = true
  owners = ["amazon"]

  filter {
    name   = "name"
    values = ["*2016-English-Full-ECS_Optimized*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

data "aws_ami" "win2k19" {
  most_recent = true
  owners = ["amazon"]

  filter {
    name   = "name"
    values = ["*2019-English-Full-Base*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

//data "aws_ami" "remnux" {
//  most_recent      = true
//  name_regex       = ".*remnux.*"
//  owners           = ["588675961644"]
//}

data "aws_ami" "tpot" {
  most_recent      = true
  name_regex       = ".*tpot.*"
  owners           = ["588675961644"]
}

data "aws_ami" "detection-dc" {
  most_recent      = true
  name_regex       = ".*detection_lab_dc.*"
  owners           = ["588675961644"]
}

data "aws_ami" "detection-wef" {
  most_recent      = true
  name_regex       = ".*detection_lab_wef.*"
  owners           = ["588675961644"]
}

data "aws_ami" "detection-win10" {
  most_recent      = true
  name_regex       = ".*detection_lab_win10.*"
  owners           = ["588675961644"]
}

# Use Data Sources to resolve the AMI-ID for the Ubuntu 16.04 AMI
data "aws_ami" "logger_ubuntu" {
  owners = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-20180912"]
  }
}

data "aws_ami" "logger_ami" {
  most_recent      = true
  name_regex       = ".*dl-logger.*"
  owners           = ["588675961644"]
}


data "aws_ami" "flare" {
  most_recent      = true
  name_regex       = "^flare-commando$"
  owners           = ["588675961644"]
}

data "aws_ami" "commando" {
  most_recent      = true
  name_regex       = "(.*commandovm.*|.*commandoVM.*)"
  owners           = ["588675961644"]
}

data "aws_ami" "commandov2" {
  most_recent      = true
  name_regex       = "^.*commandov2-win10ent.*$"
  owners           = ["588675961644"]
}