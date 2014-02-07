if node[:cloud][:provider] = "amazon"
  Chef::Log.info('AMAZON')
end

if node[:cloud][:provider] = "google"
  include_recipe "rsc_google_cloud::lb_do_attach"
end
