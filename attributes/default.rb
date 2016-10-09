home_dir = '/srv/rtorrent'
data_base_dir = "#{home_dir}/data"

default['rtorrent']['user'] = 'rtorrent'

default['rtorrent']['path']['data'] = "#{data_base_dir}/unknown"
default['rtorrent']['path']['data_base_dir'] = data_base_dir
default['rtorrent']['path']['session'] = "#{home_dir}/session"
default['rtorrent']['path']['user'] = home_dir
default['rtorrent']['path']['watch'] = "#{home_dir}/watch"

default['rtorrent']['watches'] = []

default['rtorrent']['config']['min_peers'] = 250
default['rtorrent']['config']['max_peers'] = 500
default['rtorrent']['config']['max_uploads'] = 50
default['rtorrent']['config']['port'] = 61_281
default['rtorrent']['config']['dht'] = 'auto'
default['rtorrent']['config']['peer_exchange'] = 'yes'
