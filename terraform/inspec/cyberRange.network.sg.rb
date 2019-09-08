describe aws_security_group(group_name: "targets") do it { should exist }; end
describe aws_security_group(group_name: "FB-CTF") do it { should exist }; end
describe aws_security_group(group_name: "logger_security_group") do it { should exist }; end
describe aws_security_group(group_name: "T-Pot") do it { should exist }; end
describe aws_security_group(group_name: "windows_security_group") do it { should exist }; end
describe aws_security_group(group_name: "attackers") do it { should exist }; end
describe aws_security_group(group_name: "malware") do it { should exist }; end
describe aws_security_group(group_name: "default") do it { should exist }; end
