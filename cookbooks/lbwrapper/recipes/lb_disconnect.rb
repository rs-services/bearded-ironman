require '/var/spool/cloud/meta-data.rb'

if node[:cloud][:provider] = "amazon"
   Chef::Log.info('Amazon Cloud Detected')
   include_recipe "lb::default"
   include_recipe "lb::do_detach_request"
end

if node[:cloud][:provider] = "google"
  #include_recipe "rsc_google_cloud::default"
  #include_recipe "rsc_google_cloud::lb_do_attach"
end
