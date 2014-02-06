
log "  Logging provider: #{default[:lb][:provider]}"

include_recipe "lb::do_attach_request"
