# set path:
# check whether the Haskell binary directory exists and if so add it to the PATH
[ -d "$HOME/Library/Haskell/bin" ] && export PATH="$HOME/Library/Haskell/bin:$PATH";
# check whether the mysql binary directory exists and if so add it to the PATH
[ -d "/usr/local/mysql/bin" ] && export PATH="/usr/local/mysql/bin:$PATH";
# check whether the current user has a ~/bin and if so add it to the PATH
[ -d "$HOME/bin" ] && export PATH="$HOME/bin:$PATH";
# remove duplicates from the path
export PATH=`awk -F: '{for(i=1;i<=NF;i++){if(!($i in a)){a[$i];printf s$i;s=":"}}}'<<<$PATH`;

# Prefer English and use UTF-8.
printf -v available_locales ' %s ' $(locale -a);
for lang in en_GB en_US en; do
	for locale in "$lang".{UTF-8,utf8}; do
		if [[ "$available_locales" =~ " $locale " ]]; then
			export LC_ALL="$locale";
			export LANG="$lang";
			break 2;
		fi;
	done;
done;
unset available_locales lang locale;

# set prompt:
if [[ -s "$HOME/.bash/prompt" ]]; then
  source "$HOME/.bash/prompt";
fi

# shell variables
export HISTSIZE=32768;
export HISTFILESIZE=$HISTSIZE;
# don't log duplicate commands and blank commands
export HISTCONTROL=ignoreboth;
# list of commands that should not be added to history
export HISTIGNORE="exit:[bf]g";
# make `vi` the default system editor
export EDITOR='vi';
export VISUAL='vi';
# make `man` use use `less` for paging and not clear the screen upon exit
export MANPAGER='less -X';

# Load aliases
if [[ -s "$HOME/.bash/aliases" ]]; then
	source "$HOME/.bash/aliases";
fi
