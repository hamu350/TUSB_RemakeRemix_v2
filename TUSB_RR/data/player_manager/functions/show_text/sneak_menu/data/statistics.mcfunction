#> player_manager:show_text/sneak_menu/data/statistics
#
# ワールド統計

# mathの準備
execute store result score 経過時間 Settings run time query gametime
execute store result score _ Settings run data get storage tusb_remake: start_time
execute store result storage math: in int 1 run scoreboard players operation 経過時間 Settings -= _ Settings

## 経過時間を表示用に分割
function #math:clock

tellraw @s {"text":"= ワールド統計 =","color":"white","bold":true}
tellraw @s [{"translate":"総死亡回数 : %1$s回","italic":false,"color":"red","with":[{"score": {"name": "AllDeathCount","objective": "DeathCount"}}]}]
tellraw @s [{"translate":"経過時間 : %1$s","italic":false,"color":"green","with":[{"translate":"%1$s時間%2$s分%3$s秒","italic":false,"with":[{"nbt":"out.total_hour","storage":"math:"},{"nbt":"out.minute","storage":"math:"},{"nbt":"out.second","storage":"math:"}]}]},{"nbt":"_","storage":"tusb_remake:","interpret":true}]

# 時間計算
execute store result storage math: in int 1 run scoreboard players get @s LiveTime
function #math:clock

# 表示
tellraw @s {"text":"= 個人統計 =","color":"white","bold":true}
tellraw @s [{"translate":"%1$sの死亡回数 : %2$s回","italic":false,"color":"red","with":[{"selector": "@s"},{"score": {"name": "@s","objective": "DeathCount"}}]}]
tellraw @s [{"translate":"%1$sの生存時間 : %2$s","italic":false,"color":"green","with":[{"selector": "@s"},{"translate":"%1$s時間%2$s分%3$s秒","italic":false,"with":[{"nbt":"out.total_hour","storage":"math:"},{"nbt":"out.minute","storage":"math:"},{"nbt":"out.second","storage":"math:"}]}]}]
tellraw @s ""
