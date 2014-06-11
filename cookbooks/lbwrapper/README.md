Description
===========
Provides Multi Cloud LB attach/dettach functionality 

Uses existing cloud specific cookbooks to connect to multi cloud lb services || servers.

Cookbooks
==========
  google_cloud - Google Cloud Load Balancer generic cookbook (On branch v1-GA-sec)
  rsc_google_cloud - makes google_cloud rightscale ready  lbwrapper - users both rsc_google and rightscale LWRPs

Requirements
============
Recipes:
<pre><code>
rsc_google_cloud::default
google_cloud::default
</code></pre>
Attributes
==========

Usage
=====

