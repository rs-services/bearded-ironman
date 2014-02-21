maintainer       "RightScale"
maintainer_email "edwin@rightscale.com"
license          "All rights reserved"
description      "Installs/Configures lbwrapper"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

depends "rightscale"
depends "lb"
depends "lb_elb"
depends "google_cloud"
depends "rsc_google_cloud"

recipe "lbwrapper::default"
recipe "lbwrapper::lb_connect", "connect instance to the load balancer"
recipe "lbwrapper::lb_disconnect", "disconnect instance from the load balancer"
