## Install packaging dependencies in RedHat environments
CMAKE_VERSION="3.8.1"

execute 'yum update -y'
yum_package 'epel-release'
execute 'yum update'

%w( make cmake SDL2-devel SDL2_image-devel
    SDL2_ttf-devel SDL2_mixer-devel).each do |p|
  package p
end

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
