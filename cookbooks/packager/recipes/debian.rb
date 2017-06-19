execute 'apt-get update'

%w(dh-make build-essential devscripts).each do |packaging_dependency|
  package packaging_dependency
end
