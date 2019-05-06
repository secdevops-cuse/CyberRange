
control "Verify Git Cloned Repositories" do
  impact 1.0
  title "Clone git submodules"
  desc "The end result is all submodules are cloned as desired."

  describe file('./wiki/SecDevOps-Toolkit.wiki') do it { should exist } end
end