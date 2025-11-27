#> time_limit:time_shield/change_data

# item 指定
data modify storage player_item_tuner: condition.if set value {tag:{display:{Name:'{"text":"§f§ktime§3§l時送りの盾§f§ktime"}'}}}
# いや、そういうわけじゃないな、unlessが悪さしてる
# unless(すでに入ってるやつは定義しない)、versionが経過時間と同じやつ
data modify storage player_item_tuner: condition.unless set from storage time_limit:storage shield_data.tag
# versionのみの参考にしたかったけどnbtpath的に無理説({}はリストじゃないから[0]が使えなかった記憶)
# ver:0がverはいってなくてもunlessになる可能性があるから、その場合はtagありなしで別function実行でやる
# 1を入れたときにどうなるかとかやった方がいい
# 盾データを入れるよん
# setじゃなくてもいける
# ようは指定のunlessの部分がよく指定できてない
data modify storage player_item_tuner: result.merge set from storage time_limit:storage shield_data
# どうやったら盾データを上手く入れれるかを考えようの会
# give
function #player_item_tuner:modify/inventory

# ここもなんかおかしいなｗ