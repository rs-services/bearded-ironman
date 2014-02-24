case node[:cloud][:provider]
when "ec2"
  default[:lb][:provider]='lb_elb'
  default[:lb][:service][:provider]='lb_elb'
  default[:lb][:service_name]="Amazon ELB"
when "google"
  default[:lb][:provider]='google_cloud_lb'
  default[:lb][:service][:provider]='google_cloud_lb'
  default[:lb][:service_name]="Google Load Balancer"
end
