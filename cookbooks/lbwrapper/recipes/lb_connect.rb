if node[:cloud][:provider] = "amazon"
   include_recipe "lb::lb_do_attach"
end

if node[:cloud][:provider] = "google"
  include_recipe "rsc_google_cloud::defautl"
  include_recipe "rsc_google_cloud::lb_do_attach"
  Chef::Log.info("node[:rightscale][:instance_uuid]")
end
