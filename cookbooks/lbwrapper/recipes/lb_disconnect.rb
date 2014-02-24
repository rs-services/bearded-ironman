require '/var/spool/cloud/meta-data.rb'

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
    backend_id node[:remote_recipe][:backend_id]
    backend_ip node[:remote_recipe][:backend_ip]
    backend_port node[:remote_recipe][:backend_port].to_i
    session_sticky node[:lb][:session_stickiness]
    action :detach
  end
end
