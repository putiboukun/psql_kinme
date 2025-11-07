# psql_kinme

<img src="app/static/psql_kinme_final.png" width="30%">


psql_kinmeは kinme( https://github.com/Mishima-syk/kinme )のカスタマイズバージョンです。<br>
以下の変更を加えています。

1.Docker対応<br>
2.nginx - uwsgi - flask と連携させる仕様へ変更<br>
3.kinmeで使用するDBをSQLiteからPostgreSQLへ変更<br>
4.その他kinmeの細かい仕様変更<br>

ソースをダウンロード、展開をしてそのディレクトリ内に移動後<br>
Docker composeを使用可能な状態で

    docker compose up
    
又は

    docker compose up -d #バッグラウンドで動作

することで環境を構築します。<br>
3つのコンテナが立ち上がったら　http://ホストip:8080/ (初期設定のままの場合)<br>
へアクセスすることで使用可能となります。<br>
なお、uploadできるworkflowの容量は50MBまでとなります。<br>
<br>
PostgreSQLのメジャーバージョンは `.env` 内の `POSTGRES_MAJOR` で切り替えられます。<br>
指定が無い場合はPostgreSQL 17系の公式イメージを利用します。<br>
<br>
<br>
メモ1<br>
Workflowの説明文はMarkdown形式での記載となります。<br>
<br>
メモ2<br>
databaseの情報、及びアクセスするポート番号は.envで規定されています。<br>
構築する前に変更しておくことでその内容に合わせて構築します。<br>
また、初期状態だとuwsgiのプロセス数=2となっています。<br>
プロセス数を変更したい場合には/app/config/uwsgi.iniを変更してください。




↓GitHub Codespacesでお試し<br>
[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://github.com/codespaces/new?hide_repo_select=true&ref=main&repo=835495671&skip_quickstart=true)
<br>
立ち上がったら docker compose up -d　で体験できます!







## 参考URL
[Docker] flask/uWSGI+nginx+postgresを別コンテナで構築する<br>
https://qiita.com/yoshi-kin/items/c5a2a4ddb45adfd00fce
