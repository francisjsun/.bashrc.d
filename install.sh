# Copyright (C) 2020 Francis Sun, all rights reserved.

cp -vf ./.fs_bashrc ~
cp -vf ./.inputrc ~
cp -vf ./git-prompt.sh ~

RUN_FS_BASHRC="
if [ -f ~/.fs_bashrc ]; then
    . ~/.fs_bashrc
fi
"

if [ "$(uname -s)" = "Darwin" ]; then
    echo "$RUN_FS_BASHRC" >>~/.bash_profile
    # install git completion for Darwin as well
    cp -vf ./git-completion.bash ~
    echo "
if [ -f ~/git-completion.bash ]; then
    . ~/git-completion.bash
fi
" >>~/.bash_profile
else
    echo "$RUN_FS_BASHRC" >>~/.bashrc
fi
