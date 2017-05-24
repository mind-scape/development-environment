execute 'yum update'
execute 'yum -y groupinstall "Development Tools"'

%w(rpm-build rpmdevtools).each do |p|
  package p
end
