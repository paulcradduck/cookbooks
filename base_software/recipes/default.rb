#
# Cookbook:: desktop_software
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#
# Before you run this Recipe in local mode you must install the chefDK and you
# need the windows and ohai cookbooks

include_recipe "windows"

windows_package 'Atom' do
  source 'https://atom-installer.github.com/v1.20.1/AtomSetup-x64.exe?s=1505769323&ext=.exe'
  options '-ms'
  installer_type :custom
  action :install
end

windows_package 'Steam' do
  source 'https://steamcdn-a.akamaihd.net/client/installer/SteamSetup.exe'
  action :install
end

windows_package 'RocketDock' do
  source 'https://files.punklabs.com/RocketDock/RocketDock-v1.3.5.exe'
  options '-ms'
  installer_type :custom
  action :install
end
