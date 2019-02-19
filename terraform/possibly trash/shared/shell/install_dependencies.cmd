
echo 'Install curl via Choco"
@choco install -y curl
echo 'Install Ruby'
@choco install -y ruby
echo 'Fix Ruby Gems'
@gem sources -a http://rubygems.org

echo 'Install Librarian-Puppet'
@gem install librarian-puppet
echo 'Librarian-puppet is installed...'
echo "Install of dependencies is complete... proceed w/ choco & puppet provisioning"

