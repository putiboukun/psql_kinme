# psql_kinme

<img src="app/static/psql_kinme_final.png" width="30%">


psql_kinmeは kinme( https://github.com/Mishima-syk/kinme )のカスタマイズバージョンです。<br>
以下の変更を加えています。

1.Dockerコンテナ化<br>
2.nginx - uwsgi - flask と連携する仕様へ変更<br>
3.kinmeで使用するDBをSQliteからPostgreSQLへ変更<br>
4.その他kinmeの細かい仕様を@obito_od好みに変更<br>

dockerを使用可能な環境下において

    docker compose up
    
又は

    docker compose up -d #バッグラウンドで動作

した後に
http://nginxが起動しているホストip:8080/<br>
へアクセスすることで使用可能となります。<br>
なお、nginxの設定上uploadできるworkflowの容量は50mbまでとなります。


また、現状でセキュリティ面については特に考慮できておらず、ユーザーパスワードのハッシュ化、<br>
およびpostgreSQLの接続情報の保護等は出来ておりません。<br>
(今後の課題)

現状動作確認はGitHub Codespacesのみで行っています。<br>
とりあえず動いているところを見るのであれば
[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://github.com/codespaces/new?hide_repo_select=true&ref=main&repo=835495671&skip_quickstart=true)
をクリックして環境を作ってあげるのが確実です。





## 参考URL
[Docker] flask/uWSGI+nginx+postgresを別コンテナで構築する<br>
https://qiita.com/yoshi-kin/items/c5a2a4ddb45adfd00fce
