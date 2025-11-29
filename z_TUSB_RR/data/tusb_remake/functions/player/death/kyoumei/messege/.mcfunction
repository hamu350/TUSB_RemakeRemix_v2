#> tusb_remake:player/death/kyoumei/message

# 再帰で全部のアイテムのメッセージ出すぞー！
# ほんとは[0]使いたかったけど表示順の問題で[-1]を使います

# カスタムネーム持ちとそれ以外で処理を別けます。内容変えたい場合はどっちもやってね
    execute unless data storage _: _.KyoumeiItems[-1].tag.display.Name run function tusb_remake:player/death/kyoumei/messege/no_name
    execute if data storage _: _.KyoumeiItems[-1].tag.display.Name run function tusb_remake:player/death/kyoumei/messege/custom_name

# 表示したアイテムを削除し、まだ要素が残っていれば再帰します
    data remove storage _: _.KyoumeiItems[-1]
    execute if data storage _: _.KyoumeiItems[0] run function tusb_remake:player/death/kyoumei/messege/