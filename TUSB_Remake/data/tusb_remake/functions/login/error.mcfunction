#> tusb_remake:login/error
# ログイン時に初期化エラーがあれば知らせる
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 初期化済みなのに、スコアが消えているなら、プレイヤー名が変わっているので、お知らせする
tellraw @a [{"text":"[INFO]\n プレイヤー名の変更を検知しました。ステータスが引き継がれていません。\n以下のページを参考にワールドデータのスコアボードファイルを修正してください。\n"},{"text":"https://ai-akaishi.hatenablog.jp/entry/ar970627\n","clickEvent":{"action":"open_url","value":"https://ai-akaishi.hatenablog.jp/entry/ar970627"}},{"translate":"修正が必要なプレイヤー : ","with":[{"selector":"@s"}]}]
