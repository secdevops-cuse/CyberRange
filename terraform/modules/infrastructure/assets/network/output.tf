output "vpc-id" {
  value = "${aws_vpc.main.id}"
}

output "vpc-cidr-block" {
  value = "${aws_vpc.main.cidr_block}"
}
output "cidr" {
  value = "${aws_vpc.main.cidr_block}"
}

// todo: refactor across secdevops module
output "target_subnet_id" {
  value = "${aws_subnet.target_subnet.id}"
}

output "attacker_subnet_id" {
  value = "${aws_subnet.attacker_subnet.id}"
}

output "honeypot_subnet_id" {
  value = "${aws_subnet.honeypot_subnet.id}"
}

output "malware_subnet_id" {
  value = "${aws_subnet.malware_subnet.id}"
}

output "private-a-subnet-id" {
  value = "${aws_subnet.private-a.id}"
}

output "private-b-subnet-id" {
  value = "${aws_subnet.private-b.id}"
}

