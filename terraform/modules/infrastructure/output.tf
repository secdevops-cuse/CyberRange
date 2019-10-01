output "kali-ips" {
  value = "${module.secdevops.kali-ip}"
}

output "dl-wef-ip" {
  value = "${module.secdevops.dl-wef-ip}"
}

output "dl-win10-ip" {
  value = "${module.secdevops.dl-win10-ip}"
}

output "dl-dc-ip" {
  value = "${module.secdevops.dl-dc-ip}"
}

output "instance_ips" {
  value = ["${module.secdevops.kali-ip}"]
}