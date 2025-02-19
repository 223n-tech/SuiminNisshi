# SuiminNisshi

睡眠日誌あぷり

## CakeLTEのインストール

```bash
composer install
# bin/cakeに権限が付与されていない
sudo chmod +x bin/*
# @see https://github.com/arodu/cakelte
composer require arodu/cakelte
bin/cake plugin load CakeLte
bin/cake cakelte install
cp vendor/arodu/cakelte/config/cakelte.php config/cakelte.php
bin/cake cache clear_all
rm -rf tmp/cache/*
bin/cake plugin assets copy
composer dumpautoload
# @see http://localhost:8080/
# @see http://localhost:8080/cake_lte/debug
```
