#
# Cookbook Name:: apache2-global-customlog
# Recipe:: default
#
# Copyright (C) 2014 Simon Detheridge
#
# License:: Apache v2.0
#

include_recipe 'apache2'

apache_conf 'other-vhosts-access-log' do
  notifies :reload, 'service[apache2]', :delayed
end

