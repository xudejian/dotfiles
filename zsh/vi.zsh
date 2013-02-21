vi () {
	SL=`vim --serverlist`
	[ ! -z "$SL" ] && vim -g --remote-tab-silent $@ || vim -g $@
}
