output "kali-ips" {
  value = "${module.range-infra.kali}"
}

output "vpc" {
  value = "${module.range-infra.vpc}"
}

output "secgroup" {
  value = module.range-infra.attacker_secgroup
}

output "attacker_subnet" {
  value = "${module.range-infra.attacker_subnet}"
}

output "secret_key_id" {
  value = "${module.range-infra.secret_key_id}"
}

output "enc" {
  value = "${module.range-infra.secret_key}"
}

output "access_key_id" {
  value = "${module.range-infra.access_key_id}"
}


//output "ou_id" {
//  value = "${module.organizational-units.null_resource.organizational_units.id}"
//}
output "example_pass" {
  value = "${module.range-infra.example_pass}"
}