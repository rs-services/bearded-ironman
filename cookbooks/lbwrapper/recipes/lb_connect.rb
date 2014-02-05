log "#{default[:lb][:provider]='lb_elb'}"

include_recipe "lb::do_attach_request"