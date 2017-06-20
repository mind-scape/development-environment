## Install packaging dependencies in Debian environments
%w(make gcc g++).each do |base_package|
  package base_package
end

execute 'apt-get update'
%w(libsdl2-dev libsdl2-image-dev libsdl2-ttf-dev libsdl2-mixer-dev).each do |sdl_dependency|
  package sdl_dependency
end
