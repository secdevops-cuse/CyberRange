resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.main.id}"
}

resource "aws_nat_gateway" "nat-a" {
  allocation_id = "${aws_eip.nat-a.id}"
  subnet_id     = "${aws_subnet.public-a.id}"
}

resource "aws_nat_gateway" "nat-b" {
  allocation_id = "${aws_eip.nat-b.id}"
  subnet_id     = "${aws_subnet.public-b.id}"
}
