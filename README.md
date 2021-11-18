# unixsocket-php-fpm

### 試し方

```
$ git clone https://github.com/yCroma/unixsocket-php-fpm.git unixsocket
$ cd unixsocket
$ docker-compose up -d --build

# もし表示されなかったら
$ docker-compose restart

# コンテナの中身が見たい
$ docker-compose exec nginx ash
$ docker-compose exec php_fpm ash
```

[http://localhost:28000](http://localhost:2800) へアクセス

記事：[docker-composeでunixソケットを使った、Nginx、php-fpmコンテナを作る](https://qiita.com/yCroma/items/c22d948b4393fbc96f53)
# php-fpm_nginx_setup
