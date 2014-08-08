#
# Cookbook Name:: rs-elasticsearch
# Recipe:: install_elasticsearch
#
# Copyright 2014, RightScale


bash "install_elasticsearch" do 
	cwd "/opt"
	code <<-EOH
	curl -O https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.1.1.tar.gz
    tar zxvf elasticsearch-1.1.1.tar.gz
	EOH
end
