## Install packaging dependencies in RedHat environments
execute 'yum update -y'
yum_package 'epel-release'
execute 'yum update'

%w( SDL2-devel SDL2_image-devel
    SDL2_ttf-devel SDL2_mixer-devel).each do |p|
    package p
end
