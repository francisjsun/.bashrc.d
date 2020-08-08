# Copyright (C) 2020 Francis Sun, all rights reserved.

cp -vf ./.fs_bashrc ~
cp -vf ./.inputrc ~
cp -vf ./git-prompt.sh ~

echo "
if [ -f ~/.fs_bashrc ]; then
    . ~/.fs_bashrc
fi
" \
>> ~/.bashrc
