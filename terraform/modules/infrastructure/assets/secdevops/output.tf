output "tpot-ip" {
  value = "${aws_instance.tpot.*.public_ip}"
}

output "kali-ip" {
  value = "${aws_instance.kali.*.public_ip}"
}

