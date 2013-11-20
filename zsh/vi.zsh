vi () {
  vim -g --remote-tab-silent $@ || vim $@
}
