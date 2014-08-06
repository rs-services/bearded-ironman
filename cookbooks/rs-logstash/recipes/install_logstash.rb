#
# Cookbook Name:: rs-logstash
# Recipe:: install_logstash
#
# Copyright 2014, YOUR_COMPANY_NAME
#
#
override['logstash']['instance']['name'] = 'testServer'
include_recipe 'logstash::server'