case node[:platform]
  when 'redhat', 'centos'
    include_recipe 'packager::redhat'
  when 'ubuntu', 'debian'
    include_recipe 'packager::debian'
end
