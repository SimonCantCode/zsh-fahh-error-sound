# Fahh!
# i still dont know if i should spell it "fahh" or "fah" xd
function fahh() {
	if [[ $? -ne 0 ]]; then
		( ffplay -nodisp -autoexit .config/zsh/plugins/zsh-fahh-error-sound/fah.mp3 > /dev/null 2>&1 &) > /dev/null
	fi
}
precmd(){
	fahh
}
