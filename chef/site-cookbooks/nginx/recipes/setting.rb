#
# Cookbook Name:: nginx
# Recipe:: setting
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
cookbook_file '/etc/nginx/nginx.conf' do
  notifies :reload, 'service[nginx]'
end

cookbook_file '/etc/nginx/conf.d/sample_app.conf' do
  notifies :reload, 'service[nginx]'
end
