#
# Cookbook Name:: ohenro
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
log "Hello, Chef!"

%w{httpd httpd-devel php php-devel php-pdo php-mysql php-pear mysql-server mysql pcre-devel}.each do |pkg|
  package pkg do
    action :install
  end
end

execute "devtools" do
  user "root"
  command 'yum -y groupinstall "Development Tools"'
  action :run
end

# php_pear "apc" do
#   action :install
#   directives(:shm_size => 128, :enable_cli => 1)
# end
