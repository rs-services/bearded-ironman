#
# Cookbook Name:: rs-logstash
# Recipe:: install_logstash
#
# Copyright 2014, RightScale
#
#



bash "install_logstash" do 
	cwd "/opt"
	code <<-EOH
	curl -O https://download.elasticsearch.org/logstash/logstash/logstash-1.4.2.tar.gz
	tar zxvf logstash-1.4.2.tar.gz
	for i in `ls /opt/logstash-1.4.2/bin/`; do ln -s /opt/logstash-1.4.2/bin/$i /usr/bin/$i;done
	EOH
end

