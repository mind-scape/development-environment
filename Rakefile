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
