if node[:cloud][:provider] = "amazon"
  Chef::Log.info('AMAZON')
end

if node[:cloud][:provider] = "google"
 Chef::Log.info('GCE')
 Chef::Log.info("#{node[:cloud][:provider]}")
end
