#!/usr/bin/env bash

if [ 1 -ne "$#" ]; then
	echo "$0: missing destinaty directory" >&2
	exit 1
fi

rsync -aPh --delete ${HOME}/{Documents,Dropbox,Music,Pictures,Videos} $1
