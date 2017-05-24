## Install packaging dependencies in Debian environments
execute 'apt-get update'
%w(libsdl2-dev libsdl2-image-dev libsdl2-ttf-dev libsdl2-mixer-dev).each |p|
  package p
end
