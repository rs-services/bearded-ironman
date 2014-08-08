#
# Cookbook Name:: rs-logstash
# Recipe:: install_logstash
#
# Copyright 2014, YOUR_COMPANY_NAME
#
#



bash "install_logstash_source" do 
	cwd "/usr/local/src"
	code <<-EOH
	url -O https://download.elasticsearch.org/logstash/logstash/logstash-1.4.2.tar.gz
	tar zxvf logstash-1.4.2.tar.gz
	for i in `ls /usr/local/src/logstash-1.4.2/bin/`; do ln -s /usr/local/src/logstash-1.4.2/bin/$i /usr/local/bin/$i;done
	EOH
end

