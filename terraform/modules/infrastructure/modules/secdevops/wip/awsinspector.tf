locals {
  awsinspector_subnets_ids = [
    "${var.private-a-subnet-id}",
    "${var.private-b-subnet-id}",
  ]
}

resource "aws_inspector_resource_group" "bar" {
  tags {
    Name = "${aws_instance.inspector-instance.tags.Name}"
  }
}

resource "aws_inspector_assessment_target" "myinspect" {
  name = "inspector-instance-assessment"
  resource_group_arn = "${aws_inspector_resource_group.bar.arn}"
}

resource "aws_inspector_assessment_template" "foo" {
  name       = "bar template"
  target_arn = "${aws_inspector_assessment_target.myinspect.arn}"
  duration   = 3600
// make this a region map of references - e.g. dynamic ami lookup by region - https://docs.aws.amazon.com/inspector/latest/userguide/inspector_rules-arns.html
//  rules_package_arns = [
//    "arn:aws:inspector:us-east-1:316112463485:rulespackage/0-gEjTy7T7",
//    "arn:aws:inspector:us-east-1:316112463485:rulespackage/0-rExsr2X8",
//    "arn:aws:inspector:us-east-1:316112463485:rulespackage/0-R01qwB5Q",
//    "arn:aws:inspector:us-east-1:316112463485:rulespackage/0-gBONHN9h",
//  ]


  rules_package_arns = [
//    "arn:aws:inspector:ap-southeast-2:454640832652:rulespackage/0-D5TGAxiR",
//    "arn:aws:inspector:ap-southeast-2:454640832652:rulespackage/0-Vkd2Vxjq",
//    "arn:aws:inspector:ap-southeast-2:454640832652:rulespackage/0-asL6HRgN",
//    "arn:aws:inspector:ap-southeast-2:454640832652:rulespackage/0-P8Tel2Xj",
  ]
}


resource "aws_instance" "inspector-instance" {
  count = "${var.tpot_ct}"

  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.large"

  subnet_id = "${element(local.subnets_ids, count.index)}"

  vpc_security_group_ids = ["${aws_security_group.tpot.id}"]

  key_name = "${aws_key_pair.circleci_key.key_name}"

  user_data = "${file("${var.tpot_user_data}")}"

  root_block_device {
    volume_type = "gp2"
    volume_size = "${var.tpot_root_vol_size}"
    delete_on_termination = "true"
  }

  tags {
    Name = "aws-inspector-${count.index}"
    Environment = "${var.environment}"
    Terraform = "True"
    Zombie = "True"
    Initialization_Complete = "True"
  }
}