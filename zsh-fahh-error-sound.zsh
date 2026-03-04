# Fahh!
# i still dont know if i should spell it "fahh" or "fah" xd
function fahh() {
	local rc=$? # no spaces allowed between the = apparently lol
	if [[ $rc -eq 130 ]]; then # To ignore keyboard interrupt.
		return
	fi
	if [[ $rc -ne 0 ]]; then
		( ffplay -nodisp -autoexit .config/zsh/plugins/zsh-fahh-error-sound/fah.mp3 > /dev/null 2>&1 &) > /dev/null
	fi
}

# Runs just before you get your cursor back after a command basically.
precmd(){
	fahh
}
# For bash support, use PROMPT_COMMAND='fahh' instead of precmd.
