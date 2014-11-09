require 'serverspec'

set :backend, :exec

describe 'rtorrent' do
  it 'is listening on port 1337' do
    expect(port(1337)).to be_listening
  end

  it 'has a running service' do
    expect(service('rtorrent')).to be_running
  end

  it 'has an enabled service' do
    expect(service('rtorrent')).to be_enabled
  end
end
