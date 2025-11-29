#> tusb_remake:enemy/skill/game_master/6
#
# 
#
# @within function tusb_remake:enemy/skill/game_master/

# title
    execute at @e[tag=GM,limit=1] run title @a[distance=..60,tag=GameMasterBattle] times 10 30 10
    execute at @e[tag=GM,limit=1] run title @a[distance=..60,tag=GameMasterBattle] title {"translate": "§l§4６６６"}
    execute at @e[tag=GM,limit=1] run title @a[distance=..60,tag=GameMasterBattle] title ["",{"text":"k","bold":true,"obfuscated":true,"color":"black"},{"text":"Dead or Die","bold":true,"color":"dark_red"},{"text":"k","bold":true,"obfuscated":true,"color":"black"}]

# darkness
    execute at @e[tag=GM,limit=1] run effect give @a[distance=..60,tag=GameMasterBattle] minecraft:darkness 2 1

# 0-5の乱数を生成
    execute as @e[limit=1,tag=GM] run function tusb_remake:random/update
    scoreboard players set _ TUSB 6
    execute as @e[limit=1,tag=GM] run scoreboard players operation @s Random %= _ TUSB
# 1-5
    execute as @e[limit=1,tag=GM] run execute if score @s Random matches 0..4 run schedule function tusb_remake:enemy/skill/game_master/6/1_5 3s
# 6
    execute as @e[limit=1,tag=GM] run execute if score @s Random matches 5 run schedule function tusb_remake:enemy/skill/game_master/6/6 3s
