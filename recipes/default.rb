#
# Cookbook:: chefbook
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

apt_update 'update_sources' do
  action :update
end

package 'python3-pip'

directory '/home/vagrant/Downloads' do
  owner 'root'
  group 'root'
  mode '0777'
  action :create
end

template '/home/vagrant/requirements.txt' do
  source 'requirements.txt.erb'
end

bash 'pip install requirements.txt' do
  code <<-EOL
  pip3 install -r /home/vagrant/requirements.txt
  EOL
end
