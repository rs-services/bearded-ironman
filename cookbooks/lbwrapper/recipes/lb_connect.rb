require '/var/spool/cloud/meta-data.rb'

if node[:cloud][:provider] = "amazon"
   include_recipe "lb::do_attach_request"
end

if node[:cloud][:provider] = "google"
  include_recipe "rsc_google_cloud::default"
  include_recipe "lb::lb_do_attach"
end
