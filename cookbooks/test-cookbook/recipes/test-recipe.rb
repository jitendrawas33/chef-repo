#
# Cookbook:: test-cookbook
# Recipe:: test-recipe
#
# Copyright:: 2021, The Authors, All Rights Reserved.

file '/myfiles' do 
content 'This is fist project' 
action :create 
end

execute 'run a script' do 
command <<-EOH
mkdir /rathoredir
touch /rathore
EOH
end

user 'rajput' do 
action :create
end

group 'learnchef' do 
action :create 
members 'rajput'
append true 
end 
