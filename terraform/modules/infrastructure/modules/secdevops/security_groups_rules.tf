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

# consider limiting the traffic from kali to the user, it's a path of traversal
resource "aws_security_group_rule" "allow_rdp_from_kali_to_walware" {
  type              = "ingress"
  from_port         = 0
  to_port           = 3389
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "${aws_security_group.kali.id}"
}

# only communicate over rdp - careful w/ shared folders...
resource "aws_security_group_rule" "allow_rdp_from_me_to_walware" {
  type              = "ingress"
  from_port         = 0
  to_port           = 3389
  protocol          = "-1"
  cidr_blocks       = ["${var.ip_list}"]
}
# well not nothing but on port 1 and only going to this most devilish looking ip of 6x6's
resource "aws_security_group_rule" "allow_nothing_outside_malware" {
  type              = "egress"
  from_port         = 1
  to_port           = 1
  protocol          = "-1"
  cidr_blocks       = ["66.66.66.66/32"]
}