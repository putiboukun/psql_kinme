# kinme_rev

![kinme](app/images/kinme.png)


kinme_rev is a customized version of kinme(https://github.com/Mishima-syk/kinme).

Major changes
1. Corresponding changes in package specifications.
2. Displayed images are now copied directly from SVG in WF instead of converted PNG (to prevent Japanese characters from being garbled).
3. Set a limit on the width of images displayed on the WF detail screen (to support Modern UI images).
4. improve security for python.app

It might be better to work with nginx and WSGI, but not tested.


## Setup

Install modules

    conda install -c conda-forge flask-sqlalchemy flask-login flask-wtf markdown

or

    pip install flask-sqlalchemy flask-login flask-wtf markdown


clone or download this repository

setup database

    python refreshdb.py

launch flask server

    set FLASK_APP=app.py
    flask run
or

    python app.py

launch flask server(background)

    python app.py &

or for windows

    pythonw app.pyw 

It might be better to work with uWSGI.(Set up procedure are Omitted.)

    uwsgi uwsgi.ini


## Codespace

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://github.com/codespaces/new?hide_repo_select=true&ref=main&repo=744758159&skip_quickstart=true)











# flask_example

databaseディレクトリにdataディレクトリを作成します。
https://qiita.com/yoshi-kin/items/c5a2a4ddb45adfd00fce

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
