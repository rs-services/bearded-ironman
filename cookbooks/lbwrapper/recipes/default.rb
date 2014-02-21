#
# Cookbook Name:: lbwrapper
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
rightscale_marker :begin

log "Cloud Provider: #{node[:cloud][:provider]}"
log "LB Provider: #{node[:lb][:provider]}"
log "LB Service Name: #{node[:lb][:service_name]}"

rightscale_marker :end
