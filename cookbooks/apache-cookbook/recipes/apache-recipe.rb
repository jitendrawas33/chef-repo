#
# Cookbook:: apache-cookbook
# Recipe:: apache-recipe
#
# Copyright:: 2021, The Authors, All Rights Reserved.

package 'httpd' do 
action :install 
end 

file '/var/www/html/index.html' do 
content 'Hello NODES'
action :create
end 

service 'httpd' do 
action [:enable, :start] 
end


 %w(httpd mariadb-server unzip vim git) .each do |p|
package p do 
action :install 
end 
end
 
