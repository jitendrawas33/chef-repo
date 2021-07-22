#
# Cookbook:: test-cookbook
# Recipe:: test-recipe2
#
# Copyright:: 2021, The Authors, All Rights Reserved.

package 'tree' do 
action :install 
end 

file '/myfiles2' do 
content 'Hello from file2' 
action :create
user 'root'
group 'root'
end
