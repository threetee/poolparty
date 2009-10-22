$:.unshift("#{File.dirname(__FILE__)}/../lib")
require "rubygems"
require "poolparty"

pool "poolpartytest" do
  
  cloud "app" do
    chef_repo "basic/chef-repo"
    recipe "apache2"

    chef_attributes :apache2 => {:listen_ports => ["80", "8080"]}

    security_group do
      authorize :from_port => "22", :to_port => "22"
      authorize :from_port => "80", :to_port => "80"
    end
    
    using :ec2 do
      
      elastic_ip "174.129.218.49", "174.129.204.191"
      
      user_data <<-EOE
#!/bin/bash -x
echo "New User Data! ho."    
      EOE
  
      instances 1
    end
  end
end
