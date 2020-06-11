//todo: fix win2k8
//data "aws_ebs_volume" "win2008_ebs_volume" {
//  most_recent = true
//
//  filter {
//    name   = "attachment.instance-id"
//    values = ["${aws_instance.win2008[0].id}"]
//  }
//}

//todo: fix win2k8
//output "win2008_ebs_vol_id" {
//  value = "${data.aws_ebs_volume.win2008_ebs_volume.id}"
//}

data "aws_ebs_volume" "cr_ms3_2k8" {
  most_recent = true

  filter {
    name   = "attachment.instance-id"
    values = ["${aws_instance.cr_ms3_2k8[0].id}"]
  }
}

output "cr_ms3_2k8_vol_id" {
  value = "${data.aws_ebs_volume.cr_ms3_2k8.id}"
}

data "aws_ebs_volume" "win7" {
  most_recent = true

  filter {
    name   = "attachment.instance-id"
    values = ["${aws_instance.win7[0].id}"]
  }
}

output "win7_vol_id" {
  value = "${data.aws_ebs_volume.win7.id}"
}

data "aws_ebs_volume" "win8" {
  most_recent = true

  filter {
    name   = "attachment.instance-id"
    values = ["${aws_instance.win8[0].id}"]
  }
}

output "win8_vol_id" {
  value = "${data.aws_ebs_volume.win8.id}"
}


data "aws_ebs_volume" "win2k10" {
  most_recent = true

  filter {
    name   = "attachment.instance-id"
    values = ["${aws_instance.defender_win2k10[0].id}"]
  }
}

output "win2k10_vol_id" {
  value = "${data.aws_ebs_volume.win2k10.id}"
}


data "aws_ebs_volume" "win2012" {
  most_recent = true

  filter {
    name   = "attachment.instance-id"
    values = ["${aws_instance.win2012[0].id}"]
  }
}

output "win2k12_vol_id" {
  value = "${data.aws_ebs_volume.win2012.id}"
}


data "aws_ebs_volume" "win2012_RTM" {
  most_recent = true

  filter {
    name   = "attachment.instance-id"
    values = ["${aws_instance.win2012_RTM[0].id}"]
  }
}

output "win2012_RTM_vol_id" {
  value = "${data.aws_ebs_volume.win2012_RTM.id}"
}


data "aws_ebs_volume" "win2016" {
  most_recent = true

  filter {
    name   = "attachment.instance-id"
    values = ["${aws_instance.win2016[0].id}"]
  }
}

output "win2k16_vol_id" {
  value = "${data.aws_ebs_volume.win2016.id}"
}


data "aws_ebs_volume" "win2019" {
  most_recent = true

  filter {
    name   = "attachment.instance-id"
    values = ["${aws_instance.win2019[0].id}"]
  }
}

output "win2k19_vol_id" {
  value = "${data.aws_ebs_volume.win2019.id}"
}
