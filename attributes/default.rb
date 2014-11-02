home_dir = '/srv/rtorrent'

default['rtorrent']['user'] = 'rtorrent'

default['rtorrent']['path']['user'] = home_dir
default['rtorrent']['path']['data'] = "#{home_dir}/data"
default['rtorrent']['path']['session'] = "#{home_dir}/session"

default['rtorrent']['config']['min_peers'] = 250
default['rtorrent']['config']['max_peers'] = 500
default['rtorrent']['config']['max_uploads'] = 50
default['rtorrent']['config']['port'] = 61281
default['rtorrent']['config']['dht'] = 'auto'
default['rtorrent']['config']['peer_exchange'] = 'yes'
