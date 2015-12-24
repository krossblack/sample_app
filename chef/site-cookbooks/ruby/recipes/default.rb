#
# Cookbook Name:: ruby
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#
# site-cookbooks/ruby2/recipes/default.rb
#
git "/usr/local/rbenv" do
 repository "git://github.com/sstephenson/rbenv.git"
 reference "master"
 action :sync
end

%w{/usr/local/rbenv/shims /usr/local/rbenv/versions}.each do |dir|
 directory dir do
 action :create
 end
end

git "/usr/local/ruby-build" do
 repository "git://github.com/sstephenson/ruby-build.git"
 reference "master"
 action :sync
end

bash "install_ruby_build" do
 cwd "/usr/local/ruby-build"
 code <<-EOH
 ./install.sh
 EOH
end

template "rbenv.sh" do
 path "/etc/profile.d/rbenv.sh"
 owner "root"
 group "root"
 mode "0644"
 source "rbenv.sh.erb"
end

%w{readline ncurses gdbm glibc openssl libyaml libffi zlib readline-devel ncurses-devel gdbm-devel glibc-devel gcc openssl-devel make libyaml-devel libffi-devel zlib-devel patch}.each do |pkg|
 package pkg do
 action :install
 end
end

execute "rbenv install 2.0.0-p451" do
 command "/usr/local/rbenv/bin/rbenv install 2.0.0-p451"
 action :run
 not_if { ::File.exists?("/home/vagrant/.rbenv/versions/2.0.0-p451") }
end

execute "rbenv rehash" do
 command "/usr/local/rbenv/bin/rbenv rehash"
 action :run
end

execute "rbenv global 2.0.0-p451" do
 command "/usr/local/rbenv/bin/rbenv global 2.0.0-p451"
 action :run
end

gem_package 'bundler'
