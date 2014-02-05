maintainer       "RightScale"
maintainer_email "edwin@rightscale.com"
license          "All rights reserved"
description      "Installs/Configures lbwrapper"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"


recipe "lbwrapper::lb_connect", "connect instance to the load balancer"
recipe "libwrapper::lb_disconnect", "disconnect instance from the load balancer"