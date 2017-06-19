package 'git'

CMAKE_VERSION="3.8.1"

execute 'download newest cmake version' do
  command "wget https://cmake.org/files/v3.8/cmake-#{CMAKE_VERSION}.tar.gz"
end

execute 'tar cmake' do
 command "tar -xvzf cmake-#{CMAKE_VERSION}.tar.gz"
end

bash "installing cmake #{CMAKE_VERSION}" do
  code <<-EOH
    cd cmake-#{CMAKE_VERSION}
    cmake .
    make
    make install
  EOH
end

case node[:platform]
  when 'redhat', 'centos'
    include_recipe 'environment::redhat'
  when 'ubuntu', 'debian'
    include_recipe 'environment::debian'
end
