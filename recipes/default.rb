user 'rtorrent user' do
  username lazy { node['rtorrent']['user'] }
  home lazy { node['rtorrent']['path']['user'] }
  supports :manage_home => true
  system true
end

%w{data session}.each do |dir|
  directory "rtorrent #{dir} dir" do
    path lazy { node['rtorrent']['path'][dir] }
    owner lazy { node['rtorrent']['user'] }
    mode '0755'
  end
end

%w{rtorrent tmux}.each do |package_name|
  package package_name do
    action :upgrade
  end
end

template '/etc/init.d/rtorrent' do
  source 'init.erb'
  owner 'root'
  group 'root'
  mode '0755'
  notifies :restart, 'service[rtorrent]'
end

template '/usr/local/bin/attach_rtorrent' do
  owner 'root'
  group 'root'
  mode '0755'
end

template 'rtorrent config' do
  source 'rtorrent_rc.erb'
  path lazy { "#{node['rtorrent']['path']['user']}/.rtorrent.rc" }
  owner lazy { node['rtorrent']['user'] }
  mode '0644'
end

service 'rtorrent' do
  supports :status => true, :restart => true
  action [:enable, :start]
end
