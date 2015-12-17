#!/usr/bin/zsh
for d in *(/); (cd $d; git remote rm aur 2>/dev/null; git remote add aur aur@aur.archlinux.org:$d.git)
