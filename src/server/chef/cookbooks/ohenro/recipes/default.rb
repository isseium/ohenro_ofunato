#
# Cookbook Name:: ohenro
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
log "Hello, Chef!"


include_recipe "php"

%w{httpd php php-pdo php-mysql php-apc mysql-server mysql}.each do |pkg|
  package pkg do
    action :install
  end
end


php_pear "apc" do
  action :install
  directives(:shm_size => 128, :enable_cli => 1)
end
