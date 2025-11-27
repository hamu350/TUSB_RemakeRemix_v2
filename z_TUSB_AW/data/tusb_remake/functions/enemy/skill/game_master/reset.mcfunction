#> tusb_remake:enemy/skill/game_master/reset
#
# 
#
# @within function tusb_remake:enemy/skill/game_master/

# UNOしていないプレイヤーがいたらダメージを与える
    execute as @a[distance=..60,tag=UNO] run function tusb_remake:enemy/skill/game_master/attack60
# tag remove
    tag @a remove UNO

# GMDを削除
    tag @e[tag=GMD] add Garbage
    
# GM7の位置にparticle
    execute at @e[tag=GM7] run particle minecraft:explosion ~ ~ ~ 15 15 15 0.1 500 force
# 周囲のプレイヤーに攻撃
    execute at @e[tag=GM7] as @a[distance=..30,tag=GameMasterBattle] run function tusb_remake:enemy/skill/game_master/attack77.7
# GM7を削除
    tag @e[tag=GM7] add Garbage

# ⑧のノクバ耐性消去を解除
    execute at @e[tag=GM,limit=1] as @a[distance=..60,tag=GameMasterBattle] run attribute @s minecraft:generic.knockback_resistance modifier remove 3-1-4-6-2
