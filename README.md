# flask_example

databaseディレクトリにdataディレクトリを作成します。

## docker composeを使った場合のコマンド一覧

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
