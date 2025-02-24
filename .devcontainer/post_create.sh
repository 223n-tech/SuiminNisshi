#!/bin/bash

# フォルダの管理者がrootになってしまう問題に対応
# sudo chown $(whoami):$(whoami) -R .

sudo chmod a+x "$(pwd)"
sudo rm -rf /var/www/html
DOC_ROOT=$(pwd)
if [ -d public ]; then
  DOC_ROOT="$(pwd)/public"
elif [ -d webroot ]; then
  DOC_ROOT="$(pwd)/webroot"
fi
sudo ln -s "${DOC_ROOT}" /var/www/html

source ~/.bashrc
