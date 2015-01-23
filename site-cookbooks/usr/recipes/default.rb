#
# Cookbook Name:: usr
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
group "naoya" do
  action :create
end

user "naoya" do
  group "naoya"
  home "/home/naoya"
  shell "/bin/bash"
  password nil
  supports :manage_home => true
end
