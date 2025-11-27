#> time_limit:end
# 終了時処理

# game set 
scoreboard players set Start Game 2
title @a title [{"text":"時間切れ、、、","color":"dark_red","bold":true}]
# 演出入れろ

playsound entity.generic.explode block @a ~ ~ ~ 1 1
playsound minecraft:entity.wither.death hostile @a ~ ~ ~ 1 0.5
particle explosion ~ ~ ~ 5 2 5 1 50 normal @a