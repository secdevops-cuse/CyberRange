
describe aws_subnets() do
  it { should exist }
  its('cidr_blocks') {should_not cmp []} #{ should be_in ['10.0.1.0/24','10.0.2.0/24','10.0.3.0/24','10.0.4.0/24', '10.0.5.0/24'] }
  its('cidr_blocks') { should include '192.168.38.0/24'}
  its('cidr_blocks') { should include '192.168.39.0/24'}
  its('cidr_blocks') { should include '192.168.40.0/24'}
  its('cidr_blocks') { should include '192.168.41.0/24'}
  its('cidr_blocks') { should include '192.168.42.0/24'}
  its('cidr_blocks') { should include '192.168.43.0/24'}
end

