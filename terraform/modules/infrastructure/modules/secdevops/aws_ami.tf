
data "aws_ami" "ubuntu" {
  most_recent = true
  owners = ["099720109477"]
  name_regex       = ".*ubuntu-xenial-16.04-amd64-server-20190501.*"
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

data "aws_ami" "centos" {
  most_recent = true
  owners = ["679593333241"]
  name_regex       = ".*CentOS Linux 7 x86_64 HVM EBS.*"
}

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
  name_regex       = ".*kali-2019.1.*"
  owners           = ["588675961644"]
}

data "aws_ami" "win7" {
  most_recent      = true
  name_regex       = "^Win7$"
  owners           = ["588675961644"]
}

data "aws_ami" "flare" {
  most_recent      = true
  name_regex       = "^flarevm-win7$"
  owners           = ["588675961644"]
}

data "aws_ami" "commando" {
  most_recent      = true
  name_regex       = ".*commando.*"
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

data "aws_ami" "r7" {
most_recent      = true
name_regex       = ".*r7.*"
owners           = ["588675961644"]
}

data "aws_ami" "nessus" {
most_recent      = true
name_regex       = ".*Tenable-Core-Nessus-20190308.*"
owners           = ["588675961644"]
}

data "aws_ami" "was" {
most_recent      = true
name_regex       = ".*Tenable-Core-WAS-20190308.*"
owners           = ["588675961644"]
}

data "aws_ami" "nnm" {
most_recent      = true
name_regex       = ".*Tenable.*NNM.*"
owners           = ["588675961644"]
}

data "aws_ami" "sc" {
most_recent      = true
name_regex       = ".*Tenable-Core-SecurityCenter-20190308.*"
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

data "aws_ami" "win2k3" {
  most_recent = true
  owners = ["amazon"]

  filter {
    name   = "name"
    values = ["*2003-R2_SP2-English-32Bit*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

data "aws_ami" "win2k8" {
  most_recent = true
  owners = ["amazon"]

  filter {
    name   = "name"
    values = ["*2008-R2_SP1-English-64Bit-SQL_2008_R2_SP3_Express*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
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

data "aws_ami" "remnux" {
  most_recent      = true
  name_regex       = ".*remnux.*"
  owners           = ["588675961644"]
}