JOA Example API
===========

開発準備
----

* 開発環境の準備
  * JDK(Java Development Kit)：1.7.x    * http://www.oracle.com/technetwork/java/javase/downloads/  * Tomcat 7.0.x    * http://tomcat.apache.org/download-70.cgi  * PostgreSQL 9.2.x    * http://www.postgresql.org/download/  * Eclipse Kepler(4.3.x)    * http://eclipse.org/downloads    * Eclipse IDE for Java Developers/Java EE Developersあたりで問題なし    * Tomcat Plugin（http://www.eclipsetotale.com/tomcatPlugin.html）が必要
      * 解凍したファイルをEclipse/dropinsにコピー
      * EclipseのTomcat設定にて、Tomcatバージョン/ホーム/Tomcatベース（「拡張」）を入力
      * Tomcatが起動できるかどうかを確認  * github
    * 主なクライアント      * SourceTree(Win/Mac)：http://www.sourcetreeapp.com/      * TortoiseGit(Win)：https://code.google.com/p/tortoisegit/
    * githubにSSH暗号鍵を設定する
      * https://github.com/vtiger-jp/vtigercrm-5.1.x-ja/wiki/SSH-%E6%9A%97%E5%8F%B7%E9%8D      %B5%E3%82%92%E8%A8%AD%E5%AE%9A%E3%81%99%E3%82%8B
* サンプルプロジェクトのクローン
* データベースの準備
  * init.sqlおよびcreate_index.sqlの実行
  * 観測データの入力
* クローンしたプロジェクトをEclipseでインポート
* プロジェクト設定でTomcatに関する設定を行う
  * コンテキスト名 -> /api
  * 「コンテキスト定義の更新を可能にする」をチェック
  * 最後にコンテキスト定義の更新を行う
* データベース接続の設定
  * WEB-INF/conf/gcom_w1_db.ini.distをWEB-INF/conf/gcom_w1_db.iniにコピー
  * PostgreSQLの接続情報を入力・保存
* 動作確認（http://localhost:8080/api/gcom-w1/ocean_wind）

デプロイ
----

* Eclipseのプロジェクト設定
  * 「WAR エクスポート設定」でwarファイルの出力先を入力
* warファイルの出力
  * 「プロジェクト設定に従い WAR ファイルを作成」
* 出力されたwarファイルをサーバーに配備する