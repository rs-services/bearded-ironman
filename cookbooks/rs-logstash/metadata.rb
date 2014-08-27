name             'rs-logstash'
maintainer       'RightScale'
maintainer_email 'edwin@rightscale'
license          'All rights reserved'
description      'Installs/Configures rs-logstash'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

recipe "rs-logstash::install_logstash", "Installs the logstash server"
recipe "rs-logstash::start_logstash", "Starts the logstash server"
