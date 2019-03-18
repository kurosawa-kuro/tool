# Tool

## 目的
プルリクメーカー等の便利なものを作って皆の作業を効率化させよう

### プルリクメーカー
「make_pull_req.sh」をホーム ホームディレクトリにコピーする
Git Clone済みの作業ディレクトリ内で下記コマンドを実行する
順次、タイトル・ブランチ・チケットURLを入力する

## git hooks
[
Git のカスタマイズ - Git フック](https://git-scm.com/book/ja/v2/Git-%E3%81%AE%E3%82%AB%E3%82%B9%E3%82%BF%E3%83%9E%E3%82%A4%E3%82%BA-Git-%E3%83%95%E3%83%83%E3%82%AF)  
masterブランチでのコミットやプッシュを未然に防ぐことができる
- pre-commit
- pre-push

各自のローカルにクローンしたリポジトリで設定する

格納先
.git/hook
