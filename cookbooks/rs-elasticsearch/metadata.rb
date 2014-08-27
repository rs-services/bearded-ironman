name             'rs-elasticsearch'
maintainer       'YOUR_COMPANY_NAME'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures rs-elasticsearch'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

recipe "rs-elasticsearch::default", "Installs elasticsearch dependencies."
recipe "rs-elasticsearch::install_elasticsearch", "Installs elasticsearch for use with logstash"
recipe "rs-elasticsearch::start_elasticsearch", "Starts elasticsearch daemonize, start in the background"
