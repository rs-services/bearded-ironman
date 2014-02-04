if node[:cloud][:provider] = "amazon"
  default[:lb][:provider]='lb_elb'
  default[:lb][:service_name]=node[:lbwrapper][:amazon][:service_name]
end

if node[:cloud][:provider] = "google"
  default[:lb][:provider]='gcelb_lb'
  default[:lb][:service_name]=node[:lbwrapper][:gce][:service_name]
end
