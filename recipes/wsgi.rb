#
# Cookbook Name:: python-wsgi
# Recipe:: wsgi
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

package 'httpd-devel' do
  action :install
end

python_virtualenv node['python-wsgi']['virtualenv'] do
  interpreter "#{node['python']['prefix_dir']}/bin/python2.7"
  action :create
end

ENV['CPPFLAGS'] = "-I#{node['python']['prefix_dir']}/include/python2.7"
ENV['LDFLAGS'] = "-L#{node['python']['prefix_dir']}/lib/"

# link '/usr/lib/libpython2.7.a' do
#   to '/opt/python/lib/libpython2.7.so'
#   link_type :symbolic
# end

python_pip "mod_wsgi" do
  virtualenv node['python-wsgi']['virtualenv']
end