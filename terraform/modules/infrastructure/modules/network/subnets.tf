resource "aws_subnet" "public-a" {
  vpc_id                  = "${aws_vpc.main.id}"
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "${data.aws_availability_zones.available.names[0]}"
  map_public_ip_on_launch = true

  tags {
    name        = "public-a"
    environment = "${var.environment}"
  }
  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_subnet" "public-b" {
  vpc_id                  = "${aws_vpc.main.id}"
  cidr_block              = "10.0.3.0/24"
  availability_zone       = "${data.aws_availability_zones.available.names[1]}"
  map_public_ip_on_launch = true

  tags {
    name        = "public-b"
    environment = "${var.environment}"
  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_subnet" "private-a" {
  vpc_id            = "${aws_vpc.main.id}"
  cidr_block        = "10.0.2.0/24"
  availability_zone = "${data.aws_availability_zones.available.names[0]}"

  tags {
    name        = "private-a"
    environment = "${var.environment}"
  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_subnet" "private-b" {
  vpc_id            = "${aws_vpc.main.id}"
  cidr_block        = "10.0.4.0/24"
  availability_zone = "${data.aws_availability_zones.available.names[1]}"

  tags {
    name        = "private-b"
    environment = "${var.environment}"
  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_subnet" "kali_subnets_ids" {
  vpc_id            = "${aws_vpc.main.id}"
  cidr_block        = "10.0.5.0/24"
  availability_zone = "${data.aws_availability_zones.available.names[1]}"

  tags {
    name        = "kali_subnet"
    environment = "${var.environment}"
  }

  lifecycle {
    create_before_destroy = true
  }
}
