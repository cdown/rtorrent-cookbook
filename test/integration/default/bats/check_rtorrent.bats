@test "Check rtorrent is running" {
  service rtorrent status
}

@test "Check that rtorrent is listening on port" {
  netstat -lnptu | grep '0.0.0.0:1337.*[[:blank:]]\+LISTEN.*[[:blank:]]\+[[:digit:]]\+/rtorrent'
}
