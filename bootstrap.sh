#!/bin/bash
cd "$(dirname "$0")"
function rsyncToHome() {
	rsync --exclude ".git/" --exclude ".gitmodules" --exclude ".DS_Store" --exclude "bootstrap.sh" --exclude "README.md" --exclude "osx.sh" --exclude ".dotfiles" -av . ~
}
if [ "$1" == "--force" -o "$1" == "-f" ]; then
	rsyncToHome
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		rsyncToHome
	fi
fi
unset doIt
source ~/.bash_profile
