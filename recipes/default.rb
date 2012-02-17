#
# Cookbook Name:: snmp
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "snmpd"

service "snmpd" do
  supports :restart => true, :reload => true
  action :enable
end

template "/etc/snmp/snmpd.conf" do
  source "snmpd.conf.erb"
  owner "root"
  group "root"
  mode 0644

  notifies :restart, "service[snmpd]"
end

