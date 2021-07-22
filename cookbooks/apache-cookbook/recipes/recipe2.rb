#
# Cookbook:: apache-cookbook
# Recipe:: recipe2
#
# Copyright:: 2021, The Authors, All Rights Reserved.

file '/baseinfo' do 
content " This is to get attributes 
HOSTNAME: #{node['hostname']}
IPADDRESS: #{node['ipaddress']}
CPU: #{node['cpu']['0']['mhz']}
MEMORY: #{node['memory']['total']}"
owner 'root'
group 'root'
action :create 
end

user 'jitu' 
file '/myfile'
