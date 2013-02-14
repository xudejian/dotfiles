launchctl_restart () {
	SUDO=''
	owner=`ls -l ${need_restart} | awk '{print $3}'`
	if [[ $owner = 'root' ]]; then
		SUDO='sudo'
	fi
	$SUDO launchctl unload -w $1 && $SUDO launchctl load -w $1
}

restart () {
	for o in $@
	do
		need_restart=()
		for i in /Library/LaunchDaemons/* $HOME/Library/LaunchAgents/*
		do
				regexp="$o.*\.plist$"
				if [[ $i =~ $regexp ]]; then
					need_restart+="$i"
				fi
		done

		[[ ${#need_restart} > 1 ]] && {
			echo 'too more restart'
			print -l ${need_restart}
			return 0
		}
		[[ ${#need_restart} < 1 ]] && {
			echo 'not found something like ' $o
			return 0
		}
		launchctl_restart ${need_restart}
	done
}
