output "vpc-id" {
  value = "${aws_vpc.main.id}"
}

output "vpc-cidr-block" {
  value = "${aws_vpc.main.cidr_block}"
}

output "public-a-subnet-id" {
  value = "${aws_subnet.public-a.id}"
}

output "public-b-subnet-id" {
  value = "${aws_subnet.public-b.id}"
}

output "private-a-subnet-id" {
  value = "${aws_subnet.private-a.id}"
}

output "private-b-subnet-id" {
  value = "${aws_subnet.private-b.id}"
}
