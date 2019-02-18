resource "aws_db_subnet_group" "rds-private-subnet-group" {
  name       = "rds-private-subnet-group"
  subnet_ids = ["${var.private-a-subnet-id}", "${var.private-b-subnet-id}"]

  tags {
    environment = "${var.environment}"
  }
}

resource "aws_db_instance" "master" {
  identifier           = "${var.environment}-master"
  allocated_storage    = 8
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "${var.environment}"
  username             = "username"
  password             = "password"
  db_subnet_group_name = "${aws_db_subnet_group.rds-private-subnet-group.name}"
  skip_final_snapshot  = true
  multi_az             = true

  vpc_security_group_ids = [
    "${aws_security_group.allow-mysql-ingress.id}",
  ]
}
