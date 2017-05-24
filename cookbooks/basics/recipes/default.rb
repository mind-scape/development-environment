package 'git'

## Install packaging dependencies in RedHat environments

package ['rpmbuild', 'rpmdevtools','epel-release','SDL2-devel','SDL2_image-devel','SDL2_ttf-devel','SDL2_mixer-devel']

## Install packaging dependencies in Debian environments
apt_package 'libsdl2-dev'
apt_package 'libsdl2-image-dev'
apt_package 'libsdl2-ttf-dev'
apt_package 'libsdl2-mixer-dev'
