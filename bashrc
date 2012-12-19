# --環境別の定義-------------------
if [ `uname` = "Darwin" ]; then
    # ==mac==
	if [ -d /Applications/android-sdk-macosx ]; then
		export PATH=$PATH:/opt/local/bin:/Applications/android-sdk-macosx/platform-tools
	fi
elif [ `uname` = "Linux" ]; then
    # ==Linux==
    # Source global definitions
	if [ -f /etc/bashrc ]; then
	        . /etc/bashrc
	fi
fi

# --alias-------------------
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias vi='vim'

alias l='ls '
alias ll='ls -l'
alias la='ls -la'
alias lt='ls -lrt'

# git 
alias gbr='git branch -a'
alias gci='git commit -a'
alias gco='git checkout'
alias gdi='git diff'
alias gst='git status'
alias gpl='git pull'

# Webサーバの場合
if [ -d /var/www/vhosts ]; then
        alias v='cd /var/www/vhosts;pwd'
fi

# --Cloudn環境-------------------
echo $HOSTNAME | grep i-958 > /dev/null
if [ $? -eq 0 ];then
        alias s='cd /media/share;pwd'
        alias cn01='ssh smassh@10.1.235.91'
        alias cn02='ssh smassh@10.1.108.109'
        alias cn03='ssh smassh@10.1.108.169'
        alias cn04='ssh smassh@10.1.95.46'
        alias cn05='ssh smassh@10.1.201.111'
        alias cn06='ssh smassh@10.1.168.241'
        alias cn07='ssh smassh@10.1.246.215'
        alias cn08='ssh smassh@10.1.199.193'
        alias cn09='ssh smassh@10.1.181.97'

        # プロンプトの表示変更
        # export PS1="[\u@\h \W]\\$ "
        if [ $HOSTNAME = "i-958-4296-VM" ];then
                export PS1="[\u@cn01dev1 \W]\\$ "
        elif [ $HOSTNAME = "i-958-4299-VM" ];then
                export PS1="[\u@cn02db01 \W]\\$ "
        elif [ $HOSTNAME = "i-958-4555-VM" ];then
                export PS1="[\u@cn03fms1 \W]\\$ "
        elif [ $HOSTNAME = "i-958-4433-VM" ];then
                export PS1="[\u@cn04wb01 \W]\\$ "
        elif [ $HOSTNAME = "i-958-5245-VM" ];then
                export PS1="[\u@cn05wb02 \W]\\$ "
        elif [ $HOSTNAME = "i-958-5852-VM" ];then
                export PS1="[\u@cn06wb03 \W]\\$ "
        elif [ $HOSTNAME = "i-958-5985-VM" ];then
                export PS1="[\u@cn07mon1 \W]\\$ "
        elif [ $HOSTNAME = "i-958-7307-VM" ];then
                export PS1="[\u@cn08db02 \W]\\$ "
        elif [ $HOSTNAME = "i-958-9989-VM" ];then
                export PS1="[\u@cn09wb04 \W]\\$ "
        fi
fi
