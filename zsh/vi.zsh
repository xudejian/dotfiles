vi () {
	[[ $# < 2 ]] && gvim $@ || gvim --remote-tab-silent $@
}
