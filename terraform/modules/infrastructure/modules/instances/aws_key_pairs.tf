resource "aws_key_pair" "circleci_key" {
  key_name   = "circleci_terraform"
  public_key = "${file("../../keys/circleci_terraform.pub")}"
}
