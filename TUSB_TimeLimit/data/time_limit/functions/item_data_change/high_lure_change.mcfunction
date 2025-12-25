#> time_limit:item_data_change/high_lure_change

# 高レベルのlureを書き換える
# 多分高級釣り竿とくとぅるあーが8だから5に変えればいいんだけど、それ以外にあったら教えて。
data modify storage player_item_tuner: condition.if set value {tag:{Enchantments:[{id:"minecraft:lure",lvl:8s}]}}
data modify storage player_item_tuner: result.merge set value {tag:{Enchantments:[{id:"minecraft:lure",lvl:5s}]}}
function #player_item_tuner:modify/inventory

# 進捗戻す
advancement revoke @s only time_limit:time_limit/high_lure_change