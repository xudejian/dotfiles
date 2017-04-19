var domains = {
'gorillatoolkit.org': 1,
'admob.com': 1,
'android.com': 1,
'google.com.hk': 1,
'google.fr': 1,
'google.com': 1,
'googleapis.com': 1,
'googleapi.com': 1,
'googleusercontent.com': 1,
'gstatic.com': 1,
'golang.org': 1,
'golangnews.com': 1,
'youtu.be': 1,
'youtube.com': 1,
'ytimg.com': 1,
'googlevideo.com': 1,
'tensorflow.org': 1,
'chromium.org': 1,
'googlecode.com': 1,
'blogspot.com': 1,
'appr.tc': 1,
'googlesource.com': 1,
'appspot.com': 1,
'bit.ly': 1,
'bbc.com': 1,
'ow.ly': 1,
'gist.github.com': 1,
'wordpress.com': 1,
'slideshare.net': 1,
'nextmedia.com': 1,
'businessweek.com': 1,
'pixnet.net': 1,
'rain.orgfree.com': 1,
'vim.runpaint.org': 1,
'ivank.net': 1,
'facebook.com': 1,
'facebook.net': 1,
'fbcdn.net': 1,
'dropbox.com': 1,
'wikipedia.org': 1,
'wordpress.com': 1,
'ptt.cc': 1,
'ihid.co.uk': 1,
'iask.ca': 1,
'rcinet.ca': 1,
'hidemyass.com': 1,
'caonima.biz': 1,
'trc.taboola.com': 1,
'vimeo.com': 1,
't.co': 1,
'twitter.com': 1,
'twimg.com': 1,
'medium.com': 1,
'ck101.com': 1,
'instagram.com': 1
};

var proxy = "SOCKS5 192.168.1.88:1080";

var direct = 'DIRECT;';

var hasOwnProperty = Object.hasOwnProperty;

function FindProxyForURL(url, host) {
    var suffix;
    var pos = host.lastIndexOf('.');
    pos = host.lastIndexOf('.', pos - 1);
    while(1) {
        if (pos == -1) {
            if (hasOwnProperty.call(domains, host)) {
                return proxy;
            } else {
                return direct;
            }
        }
        suffix = host.substring(pos + 1);
        if (hasOwnProperty.call(domains, suffix)) {
            return proxy;
        }
        pos = host.lastIndexOf('.', pos - 1);
    }
}
