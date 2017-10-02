#!/bin/bash

# make symlinks
echo 'check "C:\msys64\msys2_shell.cmd"!!!' 1>&2
echo '"set MSYS=winsymlinks:nativestrict" must be enabled' 1>&2
echo 'and must be Administrator!' 1>&2

for f in .??* bin
do
	[[ "$f" == ".git" ]] && continue
	[[ "$f" == ".DS_Store" ]] && continue

	ln -snfv ${PWD}/$f ~/$f
done

ln -snfv ${PWD}/config.fish ~/.config/fish/config.fish
ln -snfv ${PWD}/fishfile ~/.config/fish/fishfile


