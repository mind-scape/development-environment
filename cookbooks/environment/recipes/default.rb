case node[:platform]
  when 'redhat', 'centos'
    include_recipe 'environment::redhat'
  when 'ubuntu', 'debian'
    include_recipe 'environment::debian'
end
