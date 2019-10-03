resource "aws_key_pair" "key" {
  key_name   = "v2"
  public_key = "${file("../../keys/circleci_terraform.pub")}"
}
