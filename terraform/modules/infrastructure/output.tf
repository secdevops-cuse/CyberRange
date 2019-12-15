output "kali" {
  value = "${module.secdevops.kali-ip}"
}

output "commando" {
  value = "${module.secdevops.commando-ip}"
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


output "vpc" {
  value = "${module.network.vpc-id}"
}

output "attacker_secgroup" {
  value = module.secdevops.attacker_secgrp
}

output "attacker_subnet" {
  value = "${module.network.attacker_subnet_id}"
}

output "secret_key" {
  value = "${module.secdevops.enc_secret}"
}

output "secret_key_id" {
  value = "${module.secdevops.secret_key_id}"
}

output "access_key_id" {
  value = "${module.secdevops.access_key_id}"
}
