#
# Cookbook Name:: rs-elasticsearch
# Recipe:: install_elasticsearch
#
# Copyright 2014, RightScale


bash "install_elasticsearch" do 
	cwd "/opt/elasticsearch-1.1.1"
	code <<-EOH
	./elasticsearch -d
	EOH
end
