# set path:
# check whether the Haskell binary directory exists and if so add it to the PATH
[ -d "$HOME/Library/Haskell/bin" ] && export PATH="$HOME/Library/Haskell/bin:$PATH";
# check whether the mysql binary directory exists and if so add it to the PATH
[ -d "/usr/local/mysql/bin" ] && export PATH="/usr/local/mysql/bin:$PATH";
# check whether the current user has a ~/bin and if so add it to the PATH
[ -d "$HOME/bin" ] && export PATH="$HOME/bin:$PATH";
# check whether rvm was installed and if so add it to the PATH
[ -d "$HOME/.rvm/bin" ] && export PATH="$HOME/.rvm/bin:$PATH";
# remove duplicates from the path
export PATH=`awk -F: '{for(i=1;i<=NF;i++){if(!($i in a)){a[$i];printf s$i;s=":"}}}'<<<$PATH`;

# set prompt:
export PS1='(\!) \u@\h:\W \[$PROMPT_SMILEY\]\$ ';
# to be executed every time before a prompt is displayed
export PROMPT_COMMAND='[ $? -eq 0 ] && PROMPT_SMILEY="" || PROMPT_SMILEY="$(tput setaf 1)! $(tput sgr0)"';

# shell variables
export HISTSIZE=32768;
export HISTFILESIZE=$HISTSIZE;
export HISTCONTROL=ignoredups;
# list of commands that should not be added to history
export HISTIGNORE="exit:[bf]g"
# make `vi` the default system editor
export EDITOR='vi';
# make `man` use use `less` for paging and not clear the screen upon exit
export MANPAGER='less -X';

# Load RVM into a shell session *as a function*
if [[ -s "$HOME/.rvm/scripts/rvm" ]]; then
	source "$HOME/.rvm/scripts/rvm"
fi

# Load aliases
if [[ -s "$HOME/.bash_aliases" ]]; then
	source "$HOME/.bash_aliases"
fi
