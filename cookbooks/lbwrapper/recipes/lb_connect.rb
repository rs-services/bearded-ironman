if node[:cloud][:provider] = "amazon"
  Chef::Log('AMAZON')
end

if node[:cloud][:provider] = "google"
 Chef::Log('GCE')
end
