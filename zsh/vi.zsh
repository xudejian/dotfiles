vi () {
	SL=`vim --serverlist`
	[ -x "$SL" ] && vim -g --remote-tab-silent $@ || vim -g $@
}
