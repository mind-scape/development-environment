require 'yaml'
require "chake"

environment = "mindscape"

ssh_config_file = "config/#{environment}/ssh_config"
ips_file = "config/#{environment}/ips.yaml"

ENV['CHAKE_SSH_CONFIG'] = ssh_config_file

ips ||= YAML.load_file(ips_file)

$nodes.each do |node|
  node.data['peers'] = ips
end

task :preconfig do
  command = "sudo yum install -y wget rsync"
  $nodes.each do |node|
    puts "###############################################"
    puts "[#{node.hostname}]: EXECUTING #{command}"
    puts "This can take long"
    puts "###############################################"

    output = IO.popen("ssh -F #{ssh_config_file} #{node.hostname} #{command}")
    output.each_line do |line|
      printf "%s: %s\n", node.hostname, line.strip
    end
    output.close
    if $?
      status = $?.exitstatus
      if status != 0
        raise Exception.new(['FAILED with exit status %d' % status].join(': '))
      end
    end
  end
end

task :clean do
  user = `echo $USER`.strip
  sh "rake run['sudo rm -rf /var/tmp/chef.#{user}']"
  sh "rm -rf tmp/*"
end
