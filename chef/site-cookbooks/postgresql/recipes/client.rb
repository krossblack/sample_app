#
# Cookbook Name:: postgresql
# Recipe:: client
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'postgresql'

package 'postgresql-devel'
