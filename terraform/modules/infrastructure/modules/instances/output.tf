output "web-alb-dns-name" {
  value = "${aws_alb.web.*.dns_name}"
}

output "web-instance-ips" {
  value = "${aws_instance.web.*.public_ip}"
}
