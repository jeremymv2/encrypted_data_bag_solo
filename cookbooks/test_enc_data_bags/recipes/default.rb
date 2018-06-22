#
# Cookbook:: test_enc_data_bags
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#

Chef::Log.info(data_bag_item('secrets', 'myapp'))
