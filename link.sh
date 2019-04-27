#!/bin/bash

set -u

THIS_DIR=$(cd $(dirname $0); pwd)

cd $THIS_DIR

echo "start setup..."
for f in .??*; do
	[ "${f}" = ".git" ] && continue

	ln -snfv $HOME/dotfile/${f} $HOME/${f}
done

cat << END

************************
DOTFILE SETUP FINISHED.
************************

END
