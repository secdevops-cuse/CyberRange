control "Check Basic Github Folder structure" do
  impact 1.0
  title "Clone git Repos"
  desc "The end result is all submodules are cloned as desired."

  describe file('./DevOps') do
    it { should exist }
  end
  describe file('./Offensive') do
    it { should exist }
  end
  describe file('./SecDevOps') do
    it { should exist }
  end
  describe file('./wiki') do
    it { should exist }
  end

end


control "Verify Git Cloned Repositories" do
  impact 1.0
  title "Clone git submodules"
  desc "The end result is all submodules are cloned as desired."

  describe file('./Offensive/Metasploit-Plugins') do
    it { should exist }
  end
  describe file('./Offensive/datasploit') do
    it { should exist }
  end
  describe file('./Offensive/exploit-database-bin-sploits') do
    it { should exist }
  end
  describe file('./Offensive/snmpwn') do
    it { should exist }
  end
  describe file('./Offensive/Reconnoitre') do
    it { should exist }
  end
  describe file('./Offensive/exploit-database') do
    it { should exist }
  end
  describe file('./Offensive/exploit-database') do
    it { should exist }
  end
  describe file('./Offensive/exploit-database-papers') do
      it { should exist }
  end
  describe file('./Offensive/vulscan') do
    it { should exist }
  end
  describe file('./Offensive/Metasploit-Plugins') do it { should exist } end
  describe file('./Offensive/Reconnoitre') do it { should exist } end
  describe file('./Offensive/datasploit') do it { should exist } end
  describe file('./Offensive/exploit-database') do it { should exist } end
  describe file('./Offensive/exploit-database-bin-sploits') do it { should exist } end
  describe file('./Offensive/exploit-database-papers') do it { should exist } end
  describe file('./Offensive/joomscan') do it { should exist } end
  describe file('./Offensive/snmpwn') do it { should exist } end
  describe file('./Offensive/vulscan') do it { should exist } end
  describe file('./Offensive/OSCP-Survival-Guide') do it { should exist } end
  describe file('./Offensive/oscp') do it { should exist } end
  describe file('./DevOps/cloudgoat') do it { should exist } end
  describe file('./DevOps/learning-tools') do it { should exist } end
  describe file('./DevOps/slack-bot-lex-lambda') do it { should exist } end
  describe file('./DevOps/terraform-with-circleci-example') do it { should exist } end
  describe file('./SecDevOps/docker-bench-security') do it { should exist } end
  describe file('./SecDevOps/hammer') do it { should exist } end
  describe file('./SecDevOps/security_monkey') do it { should exist } end
  describe file('./wiki/SecDevOps-Toolkit.wiki') do it { should exist } end
end
