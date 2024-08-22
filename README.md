# psql_kinme

<img src="app/static/psql_kinme_final.png" width="30%">


psql_kinmeは kinme( https://github.com/Mishima-syk/kinme )のカスタマイズバージョンです。<br>
以下の変更を加えています。

1.Docker化<br>
2.nginx - uwsgi - flask と連携させる仕様へ変更<br>
3.kinmeで使用するDBをSQLiteからPostgreSQLへ変更<br>
4.その他kinmeの細かい仕様を@obito_od好みに変更<br>
　　→画像の保存方法を変更<br>
　　→ユーザーIDの重複登録を不可能に<br>
　　→アイコン類変更<br>
　　→文言少しだけ変更<br>
    　　　　　　　　　　　等

ソースをダウンロード後<br>
Docker、およびDocker-composeを使用可能な状態で

    docker compose up
    
又は

    docker compose up -d #バッグラウンドで動作

した後に
http://ホストip:8080/<br>
へアクセスすることで使用可能となります。<br>
なお、uploadできるworkflowの容量は50MBまでとなります。

↓GitHub Codespacesでお試し<br>
[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://github.com/codespaces/new?hide_repo_select=true&ref=main&repo=835495671&skip_quickstart=true)
<br>







## 参考URL
[Docker] flask/uWSGI+nginx+postgresを別コンテナで構築する<br>
https://qiita.com/yoshi-kin/items/c5a2a4ddb45adfd00fce
