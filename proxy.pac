function isMatchProxy(url, pattern) {
    try {
        return new RegExp(pattern.replace('.', '\\.')).test(url);
    } catch (e) {
        return false;
    }
}

function FindProxyForURL(url, host) {
  if (shExpMatch(host, "autoforce.net")) { return 'DIRECT;' }

    var proxy = 'SOCKS5 192.168.1.88:9149; DIRECT;';

    var list = [
        'google.com',
        't.co',
        'twitter.com',
        'twimg.com',
        'tinypic.com',
        'twitpic.com',
        'bitly.com',
        'yfrog.com',
        'youtube.com',
        'facebook.com',
				'fbcdn.net',
        'dropbox.com',
        'flickr.com',
        'youtube.com',
        'ytimg.com',
        'ggpht.com',
        'googleusercontent.com',
        'slideshare.net',
        'golang.org',
        'vimeo.com',
        'wordpress.com',
				'googleapis.com',
				'youtu.be',
				'gstatic.com',
        'appspot.com',
				'gist.github.com',
				'slideshare.net',
				'wikipedia.org',
				'medium.com',
				'slideshare.net',
				'instagram.com',
    ];


    for(var i=0, l=list.length; i<l; i++) {
        if (isMatchProxy(url, list[i])) {
            return proxy;
        }
    }

  return "DIRECT";
}
