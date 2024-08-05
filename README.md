# psql_kinme

![kinme](app/static/psql_kinme_final.png　width="50%")


psql_kinmeは kinme( https://github.com/Mishima-syk/kinme )のカスタマイズバージョンです。<br>
以下の変更を加えています。

1.dockerコンテナ化<br>
2.nginx - uwsgi - flask と連携する仕様へ変更<br>
3.kinmeの細かい仕様変更<br>
4.kinmeで使用するDBをSQliteからPostgreSQLへ変更<br>


dockerを使用可能な環境下において

    docker compose up
    
又は

    docker compose up -d #バッグラウンドで動作

で使用可能となります。

## Codespace

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://github.com/codespaces/new?hide_repo_select=true&ref=main&repo=835495671&skip_quickstart=true)




## ご参考: docker composeを使った場合のコマンド一覧

```bash
# イメージ作成
docker compose build --no-cache

# コンテナ起動
docker compose up

# バックグラウンドでコンテナ起動
docker compose up -d

# イメージ作成＋コンテナ起動
docker compose up -d --build

# イメージ一覧
docker images

# 起動しているコンテナ一覧
docker ps

# 停止しているコンテナも含めた一覧
docker ps -a

# ネットワーク一覧
docker network ls

# ボリューム一覧
docker volume ls

# 指定したID/名前のコンテナの中に入る
docker exec -it {コンテナID/名} bash

# コンテナ停止
docker comopse stop

# 停止中のコンテナ起動
docker comopse start

# コンテナ再起動
docker comopse restart

# コンテナ・ネットワーク削除
docker compose down

# イメージからコンテナ起動
docker compose up -d

# コンテナ・ネットワーク・ボリューム削除
docker compose down -v

# コンテナ・ネットワーク・ボリューム・イメージ削除
docker compose down -v --rmi all

```
