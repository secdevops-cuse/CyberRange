#todo: determine if variable maps are needed: https://github.com/wardviaene/terraform-course/blob/master/demo-2b/vars.tf

data "aws_ami" "centos" {
  owners = [
    "679593333241"]
  most_recent = true

  filter {
    name = "name"
    values = [
      "CentOS Linux 7 x86_64 HVM EBS *"]
  }
}

//todo: make python script or erb template to create desired public assets
variable "ami_winchoco" {
  description = "The ami of the windows chocolatey desktop"
  default     = "ami-3e768644"
}

//variable "ami_fristileaks" {
//  default     = "ami-0539fa87bb2306efe"
//  description = "FristiLeaks_1.3"
//}

data "aws_ami" "fristileaks" {
  most_recent      = true
  name_regex       = ".*FristiLeaks_1.*"
  owners           = ["588675961644"]
}

//
//variable "ami_mrrobot" {
//  default     = "ami-067d428e8151617b0"
//  description = "mrRobot"
//}

data "aws_ami" "mrrobot" {
  most_recent      = true
  name_regex       = ".*mrRobot.*"
  owners           = ["588675961644"]
}


//variable "ami_sickos" {
//  default     = "ami-0af37127c6324f3f4"
//  description = "Sick0s1.2"
//}
data "aws_ami" "sickos" {
  most_recent      = true
  name_regex       = ".*Sick0s1.2.*"
  owners           = ["588675961644"]
}


//variable "ami_vulnos" {
//  default     = "ami-0b5b15c7c25534a9c"
//  description = "VulnOSv2"
//}

data "aws_ami" "vulnos" {
  most_recent      = true
  name_regex       = ".*VulnOSv2.*"
  owners           = ["588675961644"]
}



//variable "ami_stapler" {
//  default     = "ami-0cbf02480a95b6edd"
//  description = "Stapler"
//}

data "aws_ami" "stapler" {
  most_recent      = true
  name_regex       = ".*Stapler.*"
  owners           = ["588675961644"]
}


//variable "ami_ms3_2k8" {
//  default     = "ami-0da37791afc9aea77"
//  description = "metasploitable3-win2k8"
//}

data "aws_ami" "ms3_2k8" {
  most_recent      = true
  name_regex       = ".*metasploitable3-win2k8.*"
  owners           = ["588675961644"]
}

//variable "ami_ms3_nix" {
//  default     = "ami-05056794734905857"
//  description = "metasploitable3-ubuntu-1404"
//}
data "aws_ami" "ms3_nix" {
  most_recent      = true
  name_regex       = ".*metasploitable3-ubuntu-1404.*"
  owners           = ["588675961644"]
}

//variable "ami_ms3_2k12" {
//  default     = "ami-0370dcc12619f05e1"
//  description = "metasploitable3-win2k12"
//}
data "aws_ami" "ms3_2k12" {
  most_recent      = true
  name_regex       = ".*metasploitable3-win2k12.*"
  owners           = ["588675961644"]
}

//variable "ami_skytower" {
//  default     = "ami-0edaa47a082e55340"
//  description = "SkyTower"
//}

data "aws_ami" "skytower" {
  most_recent      = true
  name_regex       = ".*SkyTower.*"
  owners           = ["588675961644"]
}
# public kali image
//variable "ami_kali-old" {
//  default     = "ami-07360d1b1c9e13198"
//  description = "Kali-2018.3"
//}

//# private kali image
//variable "ami_kali" {
//  default     = "ami-0e13b2fb6e590fc77"
//  description = "Kali-2019.1"
//}
data "aws_ami" "kali" {
  most_recent      = true
  name_regex       = ".*kali-2019.1.*"
  owners           = ["588675961644"]
}
# clean template win7 asset
//variable "ami_win7" {
//  default     = "ami-02f2c19a14caca250"
//  description = "Win7"
//}

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

# flarevm win7 asset
//variable "ami_flarewin7" {
//  default     = "ami-0c0c82ce58fe950e6"
//  description = "FlareVm-Win7"
//}

# commando asset
//variable "ami_commando" {
//  default     = "ami-09f5a44cf69b1ec5c"
//  description = "CommandoVM"
//}

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

# clean template win8 asset
//variable "ami_win8" {
//  default     = "ami-0de7687b932832df7"
//  description = "Win8"
//}

data "aws_ami" "seed_ubuntu1604" {
most_recent      = true
name_regex       = ".*seed-ubuntu-1604.*"
owners           = ["588675961644"]
}

# seed lab vm from Syr.edu
//variable "ami_seed_ubuntu1604" {
//  default     = "ami-0ebb80088327d57fc"
//  description = "seed-ubuntu-1604"
//}
#

//variable "ami_hackinos" {
//  default     = "ami-0d3b2e68e1701a861"
//  description = "hack-in-os"
//}

data "aws_ami" "hackinos" {
most_recent      = true
name_regex       = ".*hack-in-os.*"
owners           = ["588675961644"]
}


//#
//variable "ami_r7" {
//  default     = "ami-0911621222a8c9590"
//  description = "r7vm"
//}


data "aws_ami" "r7" {
most_recent      = true
name_regex       = ".*r7.*"
owners           = ["588675961644"]
}

//#
//variable "ami_nessus" {
//  default     = "ami-08eacb613e5117551"
//  description = "Nessus"
//}

data "aws_ami" "nessus" {
most_recent      = true
name_regex       = ".*Tenable-Core-Nessus-20190308.*"
owners           = ["588675961644"]
}
#
//variable "ami_was" {
//  default     = "ami-082347635d1dcc9fa"
//  description = "WebApp Scanner"
//}


data "aws_ami" "was" {
most_recent      = true
name_regex       = ".*Tenable-Core-WAS-20190308.*"
owners           = ["588675961644"]
}
#
//variable "ami_nnm" {
//  default     = "ami-0bd120b2cee2fe956"
//  description = "Nessus Network Monitor"
//}

data "aws_ami" "nnm" {
most_recent      = true
name_regex       = ".*Tenable-Core-NNM-20190308.*"
owners           = ["588675961644"]
}

#
//variable "ami_sc" {
//  default     = "ami-0278263968295c6e8"
//  description = "security center"
//}
data "aws_ami" "sc" {
most_recent      = true
name_regex       = ".*Tenable-Core-SecurityCenter-20190308.*"
owners           = ["588675961644"]
}

//-- new
//variable "ami_myhouse7" {
//  default     = "ami-016b701c461d2f341"
//  description = "myhouse7"
//}

data "aws_ami" "myhouse7" {
most_recent      = true
name_regex       = ".*myhouse7.*"
owners           = ["588675961644"]
}

//variable "ami_bulldog" {
//  default     = "ami-088907da57ded04b2"
//  description = "bulldog"
//}

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
//
//variable "ami_defender_win2k10" {
//  default     = "ami-0ba457e31b3666965"
//  description = "defender-win2010"
//}

//variable "ami_ms3_2k12" {
//  default     = "ami-0370dcc12619f05e1"
//  description = "metasploitable3-win2k12"
//}

//variable "ami_win2003"{
//  description = "The ami of the Windows_Server-2003-R2_SP2-English-32Bit-Base-2019.02.13 server asset"
//  default = "ami-09ca0032099efb5a8"
//}

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

//variable "ami_win2008"{
//  description = "The ami of the Windows_Server-2008-R2_SP1-English-64Bit-SQL_2008_R2_SP3_Express-2019.03.13 server asset"
//  default = "ami-039be681c6acc0443"
//}

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

//variable "ami_win2012"{
//  description = "The ami of the Windows_Server-2012-RTM-English-64Bit-SQL_2012_SP4_Express-2019.03.13 server asset"
//  default = "ami-0c25c3d407774dfdc"
//}

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

//variable "ami_win2012_RTM"{
//  description = "The ami of the Windows_Server-2012-R2_RTM-English-64Bit-SQL_2016_SP2_Express-2019.03.13 server asset"
//  default = "ami-00e4f149aa6ba8fcc"
//}


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
//variable "ami_win2016"{
//  description = "The ami of the Windows_Server-2016-English-Full-ECS_Optimized-2017.11.24 server asset"
//  default = "ami-9f1182e5"
//}

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
//
//variable "ami_win2016"{
//  description = "The ami of the Windows_Server-2016-English-Full-ECS_Optimized-2017.11.24 server asset"
//  default = "ami-0e8fe8e037f9a755a"
//}

//variable "ami_win2019"{
//  description = "The ami of the Windows_Server-2019-English-Full-Base-2019.03.13 server asset"
//  default = "ami-02d43577e47e684d9"
//}

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