#!/bin/bash

# set -x

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m "【メールアドレスを入力して下さい。】"  \e[m'
echo -e $'\e[1;31m ================================= \e[m'
read EMAIL

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m "[メールアドレス]:$EMAIL"           \e[m'
echo -e $'\e[1;31m ================================= \e[m'
echo ""

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m 【ssh-keygen Operation】           \e[m'
echo -e $'\e[1;31m ================================= \e[m'

echo "cd"
cd

echo "install -m 0700 -d ~/.ssh"
install -m 0700 -d ~/.ssh

echo "cd ~/.ssh"
cd ~/.ssh

echo "ssh-keygen -t rsa -b 4096 -C $EMAIL -f ~/.ssh/id_rsa"
ssh-keygen -t rsa -b 4096 -C $EMAIL -f ~/.ssh/id_rsa

echo "chmod 700 ~/.ssh"
chmod 700 ~/.ssh

echo "chmod 600 ~/.ssh/id_rsa ~/.ssh/id_rsa.pub"
chmod 600 ~/.ssh/id_rsa ~/.ssh/id_rsa.pub

echo "ls -la ~/.ssh"
ls -la ~/.ssh

echo "git config --global user.email $EMAIL"
git config --global user.email $EMAIL

echo "git config --global user.name "Toshifumi Kurosawa""
git config --global user.name "Toshifumi Kurosawa"

echo "git config --global core.editor 'vim -c "set fenc=utf-8"'"
git config --global core.editor 'vim -c "set fenc=utf-8"'

echo "git config --global push.default simple"
git config --global push.default simple

echo "cat ~/.ssh/id_rsa.pub"
cat ~/.ssh/id_rsa.pub

# デバッグを終了する
set +x