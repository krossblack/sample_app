#
# Cookbook Name:: postgresql
# Recipe:: server
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'postgresql'

package 'postgresql-devel'
package 'postgresql'
package 'postgresql-server'

service 'postgresql' do
  action [:enable, :start]
end
