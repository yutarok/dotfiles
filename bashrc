# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Alias
if [ -f ~/.bash_alias ] ; then
. ~/.bash_alias
fi

# MacOS
if [ `uname` = "Darwin" ]; then

    export TERM=xterm-256color
	if [ -d /Applications/android-sdk-macosx ]; then
		export PATH=$PATH:/opt/local/bin:/Applications/android-sdk-macosx/platform-tools
	fi
	
	# Alias for macOS
	if [ -f ~/.bash_alias ] ; then
	. ~/.bash_alias_macos
	fi

fi

# History display daytime
export HISTTIMEFORMAT='%y/%m/%d %H:%M:%S '

# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export PS1="[\u@mbp13:\w] $ "
export WWW_HOME="google.co.jp"

#script ~/logs/iterm.`date +%Y%m%d-%H%M%S`.log

