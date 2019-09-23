#!/bin/bash

set -u

THIS_DIR=$(cd $(dirname $0); pwd)

cd $THIS_DIR

echo "start setup..."
for f in .??*; do
	[ "${f}" = ".git" ] && continue
	[ "${f}" = ".config" ] && continue

	ln -snfv $HOME/dotfile/${f} $HOME/${f}
done

ln -snfv $HOME/dotfile/.config/nvim/init.vim $HOME/.config/nvim/init.vim
cd $THIS_DIR/.config/nvim/dein
for f in *; do
	ln -snfv $HOME/dotfile/.config/nvim/dein/${f} $HOME/.config/nvim/dein/${f}
done

cd $THIS_DIR/.config/autostart
for f in *; do
	ln -snvf $HOME/dotfile/.config/autostart/${f} $HOME/.config/autostart/${f}
done

cd $THIS_DIR/.config/evince
for f in *; do
	ln -snvf $HOME/dotfile/.config/evince/${f} $HOME/.config/evince/${f}
done

cat << END

************************
DOTFILE SETUP FINISHED.
************************

END
