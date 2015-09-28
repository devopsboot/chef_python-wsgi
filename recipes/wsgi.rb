#
# Cookbook Name:: python-wsgi
# Recipe:: wsgi
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

package 'httpd-devel' do
  action :install
end

python_virtualenv "/opt/python_virtualenv" do
  interpreter "/opt/python/bin/python2.7"
  action :create
end

ENV['CPPFLAGS'] = '-I/opt/python/include/python2.7'

link '/usr/lib/libpython2.7.a' do
  to '/opt/python/lib/libpython2.7.so'
  link_type :symbolic
end

python_pip "mod_wsgi" do
  virtualenv "/opt/python_virtualenv"
end