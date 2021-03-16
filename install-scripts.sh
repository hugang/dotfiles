# scripts
if [ ! -d "$HOME"/scripts ]; then
	# shellcheck disable=SC2027
	echo "scripts not found, link ""$HOME""/scripts"
	ln -s $(pwd)/scripts "$HOME"/scripts
else
	echo "scripts found, move to backup folder"
	mv "$HOME"/scripts "$HOME"/scripts_bak
fi

echo "scripts done"
