#> tusb_remake:enemy/skill/game_master/3
#
# 
#
# @within function tusb_remake:enemy/skill/game_master/

# me
    execute as @e[tag=GM,limit=1] run me §l§d<3
# title
    execute at @e[tag=GM,limit=1] run title @a[distance=..60,tag=GameMasterBattle] times 10 30 10
    execute at @e[tag=GM,limit=1] run title @a[distance=..60,tag=GameMasterBattle] title {"translate": "§l§4３３３"}
# heal
    execute at @e[tag=GM,limit=1] run scoreboard players set @a[distance=..60,tag=GameMasterBattle] HealCount 30
# hunger
    execute at @e[tag=GM,limit=1] run effect give @a[distance=..60,tag=GameMasterBattle] minecraft:hunger 15 1
# darkness
    execute at @e[tag=GM,limit=1] run effect give @a[distance=..60,tag=GameMasterBattle] minecraft:darkness 10 1
# slowness
    execute at @e[tag=GM,limit=1] run effect give @a[distance=..60,tag=GameMasterBattle] minecraft:slowness 5 5
# sound
    execute at @e[tag=GM,limit=1] run playsound minecraft:entity.player.levelup player @a[distance=..60,tag=GameMasterBattle] ~ ~ ~ 2 1
