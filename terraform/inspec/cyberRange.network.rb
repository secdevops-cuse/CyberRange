
describe aws_subnets() do
  it { should exist }
  its('cidr_blocks') { should be_in ['10.0.1.0/24','10.0.2.0/24','10.0.3.0/24','10.0.4.0/24', '10.0.5.0/24'] }
end