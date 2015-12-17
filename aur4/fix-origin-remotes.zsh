#!/usr/bin/zsh
for d in *(/); (cd $d; git remote set-url origin git@github.com:forivall/aur-packages.git)
