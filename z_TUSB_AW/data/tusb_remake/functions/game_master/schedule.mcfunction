#> tusb_remake:boss/schedule

execute store success storage tusb_remake: game_master.live byte 1 if entity @e[limit=1,sort=nearest,type=skeleton,tag=GM]
schedule function tusb_remake:game_master/schedule 1t
execute unless data storage tusb_remake: game_master{live:1b} run schedule clear tusb_remake:game_master/schedule

# 緩衝体力なくなったらENDモード
execute store result score _ GMA run data get entity @e[type=skeleton,tag=GM,limit=1] AbsorptionAmount
execute as @e[type=skeleton,tag=GM] at @s unless score _ GMA matches 1.. unless entity @e[tag=GMend] run function tusb_remake:game_master/end

# ボスバー！
execute as @e[type=skeleton,tag=GM] at @s run bossbar set minecraft:game_master players @a[distance=..60]
execute store result bossbar minecraft:game_master value run data get entity @e[limit=1,sort=nearest,type=skeleton,tag=GM] AbsorptionAmount 1

execute as @e[type=skeleton,tag=GM] at @s unless entity @a[distance=..60,tag=GameMasterBattle] run function tusb_remake:game_master/bosswin/
