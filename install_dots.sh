#!/bin/sh

set -eux

repository=~/git/dotfiles

download() {
    git clone git@github.com:yutarok/dotfiles.git $repository
}

initialize() {
    if [ -f $repository/ssh.zip ]; then
	# Be sure to put a password as follows
	# zip -e ssh.zip -r ssh -x ssh/known_hosts
        unzip $repository/ssh.zip -d $repository
        chmod 600 $repository/ssh/*
    fi
}

link() {
    dist=~

    targets=(
        bash_alias
        bash_alias_macos
        bash_profile
        bashrc
        gitconfig
	vimrc
	ssh
	gemrc
#        bundle/config
#        emacs.d/init.el
#        pryrc
#        rspec
    )

    [ -d $dist/.aws ]     || mkdir $dist/.aws

    for target in "${targets[@]}"; do
        ln -s -r -b     "$repository/$target" "$dist/.$target" || \
        ln -s    -b     "$repository/$target" "$dist/.$target" || \
        ln -s        -f "$repository/$target" "$dist/.$target"
    done
}

[ -d $repository ] || download
initialize
link
echo "Dotfiles Installed"
