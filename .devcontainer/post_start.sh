#!/bin/bash

# フォルダの管理者がrootになってしまう問題に対応
# sudo chown $(whoami):$(whoami) -R .

# if [ ! -e "${PWD}/composer.lock" ]; then
#   composer install -n
# fi

if [ -z "${__GIT_PROMPT_SHOW_CHANGED_FILES_COUNT}" ]; then
  source "${HOME}/.bashrc"
fi

apache2ctl start
