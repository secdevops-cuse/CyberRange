# todo: test & debug
command('find /root/git -type f').stdout.split.each do |fname|
  describe file(fname) do
    its('owner') { should cmp 'root' }
  end
end