name             'rs-logstash'
maintainer       'RightScale'
maintainer_email 'edwin@rightscale'
license          'All rights reserved'
description      'Installs/Configures rs-logstash'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'


depends 'logstash'

recipe "rs-logstash::install_logstash", "Installs the logstash server"
