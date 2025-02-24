#!/bin/bash

# フォルダの管理者がrootになってしまう問題に対応
sudo chown $(whoami):$(whoami) -R .

## Apacheのrewriteモジュールを有効化
if [ ! -e "/etc/apache2/mods-enabled/rewrite.load" ]; then
  a2enmod rewrite
fi

if [ ! -e "${PWD}/composer.lock" ]; then
  composer install -n
fi

## app_local.phpが存在しない場合はpost-install-cmdを実行
if [ ! -e "${PWD}/config/app_local.php" ]; then
  composer run post-install-cmd -n
fi

if [ -z "${__GIT_PROMPT_SHOW_CHANGED_FILES_COUNT}" ]; then
  source "${HOME}/.bashrc"
fi

apache2ctl start
