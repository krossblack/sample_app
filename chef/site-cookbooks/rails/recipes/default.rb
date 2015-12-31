#
# Cookbook Name:: rails
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'user'

directory '/var/' do
  mode '0755'
  owner 'app'
end


#yum_repository "postgresql" do
#  url "http://yum.postgresql.org/9.4/redhat/rhel-7-x86_64/pgdg-redhat94-9.4-2.noarch.rpm"
#  action :add
#end
#

include_recipe 'postgresql::client'

package 'gcc-c++'

include_recipe 'rails::logrotate'
