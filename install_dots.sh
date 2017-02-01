#!/bin/sh

set -eux

repository=~/git/dotfiles

download() {
    git clone git@github.com:yutarok/dotfiles.git $repository
}

#initialize() {
#    chmod 644 $repository/.ghci
#}

link() {
    dist=~

    targets=(
        bash_alias
        bash_alias_macos
        bash_profile
        bashrc
        gitconfig
	vimrc
#        bundle/config
#        emacs.d/init.el
#        ghci
#        pryrc
#        rspec
#        ssh/config
    )

    [ -d $dist/.ssh ]     || mkdir $dist/.ssh
    [ -d $dist/.aws ]     || mkdir $dist/.aws

    for target in "${targets[@]}"; do
        ln -s -r -b     "$repository/$target" "$dist/.$target" || \
        ln -s    -b     "$repository/$target" "$dist/.$target" || \
        ln -s        -f "$repository/$target" "$dist/.$target"
    done
}

[ -d $repository ] || download
#initialize
link
