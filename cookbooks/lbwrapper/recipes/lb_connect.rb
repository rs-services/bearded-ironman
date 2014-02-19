require '/var/spool/cloud/meta-data.rb'

log "Cloud Detected: #{node[:cloud][:provider]}"
log "LB Provider: #{node[:lb][:provider]}"
include_recipe "lb::default"
include_recipe "lb::do_attach_request"
