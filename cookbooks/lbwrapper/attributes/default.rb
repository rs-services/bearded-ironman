if node[:cloud][:provider] = "amazon"
  default[:lb][:provider]='lb_elb'
  default[:lb][:service_name]="Amazon ELB"
end

#if node[:cloud][:provider] = "google"
#  default[:lb][:provider]='google_cloud_lb'
#  default[:lb][:service_name]="Google Load Balancer"
#end
