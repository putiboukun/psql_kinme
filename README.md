# psql_kinme

<img src="app/static/psql_kinme_final.png" width="30%">


psql_kinmeは kinme( https://github.com/Mishima-syk/kinme )のカスタマイズバージョンです。<br>
以下の変更を加えています。

1.dockerコンテナ化<br>
2.nginx - uwsgi - flask と連携する仕様へ変更<br>
3.kinmeで使用するDBをSQliteからPostgreSQLへ変更<br>
4.その他kinmeの細かい仕様を@obito_od好みに変更<br>

dockerを使用可能な環境下において

    docker compose up
    
又は

    docker compose up -d #バッグラウンドで動作

した後に
http://hostip:8080/<br>
へアクセスすることで使用可能となります。<br>
なお、nginxの設定上uploadできるworkflowの容量は50mbまでとなります。


また、現状でセキュリティ面については特に考慮できておらず、ユーザーパスワードのハッシュ化、<br>
およびpostgreSQLの接続情報の保護等は出来ておりません。<br>
(今後の課題)

ちょっと試してみたい、という方は
[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://github.com/codespaces/new?hide_repo_select=true&ref=main&repo=835495671&skip_quickstart=true)
のボタンをクリック!




## ご参考: docker composeを使った場合のコマンド一覧

```bash
# コンテナ起動
docker compose up

# バックグラウンドでコンテナ起動
docker compose up -d

# イメージ一覧
docker images

# 起動しているコンテナ一覧
docker ps

# 停止しているコンテナも含めた一覧
docker ps -a

# ネットワーク一覧
docker network ls

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
