## Install packaging dependencies in RedHat environments
execute 'yum update -y'
yum_package 'epel-release'
execute 'yum update'

%w( gcc-c++ make cmake SDL2-devel SDL2_image-devel
    SDL2_ttf-devel SDL2_mixer-devel).each do |p|
  package p
end

execute "yum group install -y 'gnome desktop'"

execute "switch to the GUI target" do
  command "systemctl isolate graphical.target"
end

execute "enable graphical target" do
  command "systemctl set-default graphical.target"
end
