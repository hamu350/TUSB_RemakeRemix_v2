#> time_limit:item_data_change/end_of_end

# 全能ノーのネザライト化を許しません
# ネザライトからダイヤに戻す
data modify storage player_item_tuner: condition.if set value {id:"minecraft:netherite_pickaxe"}
data modify storage player_item_tuner: result.merge set value {id:"minecraft:diamond_pickaxe"}
function #player_item_tuner:modify/inventory
# ネザライトを戻す
give @s netherite_ingot
# 演出
playsound entity.wither.death hostile @s ~ ~ ~ 1 2
particle soul_fire_flame ~ ~1 ~ 0.1 0.25 0.1 0.05 25 normal @s
# msg
tellraw @s [{"text":"これ以上強くできないようだ、、","color":"red","bold":true}]
# 進捗戻す
advancement revoke @s only time_limit:time_limit/no_god_return