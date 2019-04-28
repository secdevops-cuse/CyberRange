// A centralized location for all security group rules...

resource "aws_security_group_rule" "allow_all_between_webgoat_and_kali" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "${aws_security_group.webgoat.id}"
}

resource "aws_security_group_rule" "allow_all_between_kali_and_webgoat" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "${aws_security_group.kali.id}"
}

resource "aws_security_group_rule" "allow_rdp_from_kali_to_walware" {
  type              = "ingress"
  from_port         = 0
  to_port           = 3389
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "${aws_security_group.kali.id}"
}

resource "aws_security_group_rule" "allow_malware_to_malware" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "${aws_security_group.malware.id}"
}