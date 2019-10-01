
# AWS Element Reference: https://www.inspec.io/docs/reference/resources/aws_ec2_instance/

describe aws_ec2_instance(name: 'flarevm-win7-0') do
  it { should exist }
  it { should be_running }
end
#    running is defective if there's no outbound ?

describe aws_ec2_instance(name: 'commando-pT16-0') do
  it { should exist }
  it { should be_running }
  # port(3389) { should be_listening }
end



# check all the keypairs
# aws_ec2_instances.instance_ids.each do |instance_id|
#   describe aws_ec2_instance(instance_id) do
#     its('key_name') { should cmp 'circleci_terraform' }
#   end
# end
