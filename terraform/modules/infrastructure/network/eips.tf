resource "aws_eip" "nat-a" {
  vpc = true
}

resource "aws_eip" "nat-b" {
  vpc = true
}
