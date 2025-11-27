# testようにしたんだけど、、、よくわからん。
# item 指定
data modify storage player_item_tuner: condition.if set value {id:"minecraft:shield"}

# 盾データを入れるよん
data modify storage player_item_tuner: result.merge set from storage time_limit:storage shield_data
# どうやったら盾データを上手く入れれるかを考えようの会
# give
function #player_item_tuner:modify/inventory