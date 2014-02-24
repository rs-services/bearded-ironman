require '/var/spool/cloud/meta-data.rb'
include_recipe "lbwrapper::default"
log "Cloud Detected: #{node[:cloud][:provider]}"
log "LB Provider: #{node[:lb][:provider]}"

class Chef::Recipe
  include RightScale::App::Helper
end

# Calls the "attach" action for all pools.
log " Remote recipe executed by do_attach_request"
# See cookbooks/app/libraries/helper.rb for the "pool_names" method.
pool_names(node[:lb][:pools]).each do |pool_name|
  log " Adding tag to answer for vhost load balancing - #{pool_name}."
  # See cookbooks/lb/definitions/lb_tag.rb for the "lb_tag" definition.
  lb_tag pool_name
  # See cookbooks/lb_<provider>/providers/default.rb for the "attach" action.
  lb pool_name do
    provider node[:lb][:provider]
    backend_id node[:rightscale][:instance_uuid]
    backend_ip node[:app][:ip]
    backend_port node[:app][:port].to_i
    service_region node[:lb][:service][:region]
    service_lb_name node[:lb][:service][:lb_name]
    service_account_id node[:lb][:service][:account_id]
    service_account_secret node[:lb][:service][:account_secret]
    session_sticky node[:lb][:session_stickiness]
    action :attach
  end
end
