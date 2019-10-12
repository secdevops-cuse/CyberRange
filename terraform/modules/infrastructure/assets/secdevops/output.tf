output "tpot-ip" {
  value = "${aws_instance.tpot.*.public_ip}"
}

output "kali-ip" {
  value = "${aws_instance.kali.*.public_ip}"
}

output "dl-wef-ip" {
  value = "${aws_instance.dl-wef.*.public_ip}"
}

output "dl-win10-ip" {
  value = "${aws_instance.dl-win10.*.public_ip}"
}

output "dl-dc-ip" {
  value = "${aws_instance.dl-dc.*.public_ip}"
}

output "attacker_secgrp" {
  value = "${aws_security_group.kali.id}"
}

output "enc_secret" {
  value = "${aws_iam_access_key.cloudgoat.encrypted_secret}"
}

output "secret_key_id" {
  value = "${aws_iam_access_key.cloudgoat.secret}"
}

output "access_key_id" {
  value = "${aws_iam_access_key.cloudgoat.id}"
}