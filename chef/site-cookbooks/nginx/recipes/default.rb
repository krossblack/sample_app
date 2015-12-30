#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'yum-epel'

package 'nginx'

service 'nginx' do
  action [:enable, :start]
  supports reload: true
end

%w(default.conf example_ssl.conf).each do |file|
  file "/etc/nginx/conf.d/#{file}" do
    action :delete
    notifies :reload, 'service[nginx]'
  end
end

include_recipe 'nginx::setting'
