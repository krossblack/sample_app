#
# Cookbook Name:: postgresql
# Recipe::default.rb
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package_rpm = 'pgdg-redhat94-9.4-2.noarch.rpm'
remote_file "/tmp/#{package_rpm}" do
  source "http://yum.postgresql.org/9.4/redhat/rhel-7-x86_64/#{package_rpm}"
end

rpm_package "#{package_rpm}" do
  source "/tmp/#{package_rpm}"
end
