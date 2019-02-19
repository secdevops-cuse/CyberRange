

# todo: need to create an array of software / versions for a set of well-formed choco remote-exec provisioner statements
def get_windows_assets(asset_name='terraform_automated_manifest', ami_name='win2016-ami', choco_packages='googlechrome wireshark flashplayer', ticket = 'VULN-1234'):
    resource = 'resource "aws_instance" ' + asset_name + ' {\n'
    ami = 'ami = "${var.' + ami_name + '}"\n'
    instance = 'instance_type = "${var.instance_type}"\n'
    subnet = 'subnet_id = "${var.subnet_id}"\n'
    key = 'key_name = "${var.key_name}"\n'
    vpc = 'vpc_security_group_ids = ["${var.secgroup_id}"]\n'
    choco_provisioner = '    provisioner "remote-exec" { \n \
        inline = [ "echo \'Installing [ ${var.software} Version: ${var.version_unpatched} ] via choco\'","choco install -y ' + choco_packages + '" ] \n \
        connection { \n \
            type     = "winrm" \n \
            user     = "${var.winrm_user}" \n \
            password     = "${var.winrm_pass}" \n \
            insecure = true \n \
            } \n \
    }'
    tags = '\ttags { \n \
        Name = ' + asset_name + '_' + ticket + ' ${var.ticket}", \n \
        Ticket = "'+ ticket +'", \n \
        Auto-Off = "True", \n \
        Auto-Delete = "False" \n \
    }\n '
    end_bracket = '}\n'
    print(resource +'\n' + ami +'\n' + instance +'\n' + subnet +'\n' + key +'\n' + vpc +'\n' + choco_provisioner + '\n' + tags +'\n' + end_bracket)
    print("-----------------------")
    print(resource  + ami  + instance  + subnet  + key  + vpc  + choco_provisioner + '\n' + tags  + end_bracket)

if __name__ == '__main__':
    get_windows_assets()