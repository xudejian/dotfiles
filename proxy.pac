function FindProxyForURL(url, host) {
  if (shExpMatch(host, "api.autoforce.net")) { return 'DIRECT;' }
  if (shExpMatch(host, "*.autoforce.net")) { return 'DIRECT;' }
  if (shExpMatch(host, "autoforce.net")) { return 'DIRECT;' }
  if (shExpMatch(host, "localhost")) { return 'DIRECT;' }
  if (shExpMatch(host, "192.168.")) { return 'DIRECT;' }
  if (shExpMatch(host, "127.0.0.1")) { return 'DIRECT;' }
  return 'SOCKS5 192.168.1.88:1080; DIRECT;';
}
