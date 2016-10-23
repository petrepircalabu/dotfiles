#!/bin/sh

file=.Xresources

if [ -e ${HOME}/${file} ] ;then
	test -L ${HOME}/${file} || mv ${HOME}/${file} ${HOME}/${file}.bak
fi

ln -f -s $(readlink -f Xresources) ${HOME}/${file}

ln -f -s ${HOME}/${file} ${HOME}/.Xdefaults-$(hostname)

