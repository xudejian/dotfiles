#!/bin/bash
#require brew
brew list dnsmasq || brew install dnsmasq && exit
mkdir -p /usr/local/etc
cp /usr/local/opt/dnsmasq/dnsmasq.conf.example /usr/local/etc/dnsmasq.conf
sed -i '' 's#\#conf-dir=.*#conf-dir=/usr/local/etc/dnsmasq.d#g' /usr/local/etc/dnsmasq.conf
ln -sfv ~/src/mydns /usr/local/etc/dnsmasq.d
sudo cp -fv /usr/local/opt/dnsmasq/*.plist /Library/LaunchDaemons
sudo launchctl load /Library/LaunchDaemons/homebrew.mxcl.dnsmasq.plist
