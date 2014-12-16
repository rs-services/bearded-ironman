node[:dns][:provider] - dns provider name used by fog (http://fog.io/about/provider_documentation.html)
# Examples -AWS, DNSMadeEasy, Dynect, Google, Rackspace, Zerigo, OpenStack, Cloudstack

node[:dns][:domain] - domain of the record
node[:dns][:credentials] - hash of connection credentials used by fog (https://github.com/fog/fog/blob/master/lib/fog/{provider}/dns.rb)
node[:dns][:disable] - disable creation of node dns record but allow updating if record exists
node[:dns][:entry][:name] - dns entry name
node[:dns][:entry][:type] - dns entry type
node[:dns][:entry][:value] - dns entry value
node[:dns][:chef_client_config] - automatically include dns::chef-client recipe
