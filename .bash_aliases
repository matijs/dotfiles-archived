# aliases:
# use colorized output when listing files and always list all files
alias ls='ls -Ga';
# always ask for confirmation when removing files
alias rm='rm -i';
# always ask for confirmation when copying files
alias cp='cp -i';
# alias `simplehttpd` to start a simple webserver in the current director
alias simplehttpd='python -m SimpleHTTPServer 8888 >/dev/null 2>&1&';
# alias to edit ~/.bash_profile and reload it after saving
alias pro='vi ~/.bash_profile; source ~/.bash_profile';
# make `less` not clear the screen upon exit
alias less='less -X';
# just for fun, but also make bash expand other aliasses for sudo, http://git.io/wtfbash
alias ffs='sudo ';
