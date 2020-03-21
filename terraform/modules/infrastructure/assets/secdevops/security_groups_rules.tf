// A centralized location for all security group rules which allow group-to-group access...


resource "aws_security_group_rule" "allow_all_between_attacker_and_target" {
  description       = "to allow communication between the targets and the attackers"
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  source_security_group_id = "${aws_security_group.kali.id}"
  security_group_id = "${aws_security_group.targets.id}"
}


resource "aws_security_group_rule" "allow_all_between_target_and_attacker" {
  description       = "to allow communication between the targets and the attackers"
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  source_security_group_id = "${aws_security_group.targets.id}"
  security_group_id = "${aws_security_group.kali.id}"
}


resource "aws_security_group_rule" "allow_malware_to_malware" {
  description       = "to allow communication within the malware security group"
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  source_security_group_id = "${aws_security_group.malware.id}"
  security_group_id = "${aws_security_group.malware.id}"
}

resource "aws_security_group_rule" "allow_all_between_target_and_logger" {
  description       = "to allow communication between the targets and the attackers"
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  source_security_group_id = "${aws_security_group.targets.id}"
  security_group_id = "${aws_security_group.logger.id}"
}

resource "aws_security_group_rule" "allow_all_between_attacker_and_logger" {
  description       = "to allow communication between the targets and the attackers"
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  source_security_group_id = "${aws_security_group.kali.id}"
  security_group_id = "${aws_security_group.logger.id}"
}