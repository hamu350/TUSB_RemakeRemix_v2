#> tusb_remake:enemy/skill/game_master/6/1_5
#
# 
#
# @within function tusb_remake:enemy/skill/game_master/6/

# me
    execute as @e[limit=1,tag=GM] at @s run me 当たりを引いたか。でも痛そうだね？
# title
    execute as @e[limit=1,tag=GM] at @s run title @a[distance=..60,tag=GameMasterBattle] title ["",{"text":"k","bold":true,"obfuscated":true,"color":"black"},{"text":"DIE","bold":true,"color":"dark_red"},{"text":"k","bold":true,"obfuscated":true,"color":"black"}]
# sound
    execute at @e[limit=1,tag=GM] run playsound entity.wither.death master @a[distance=..60]
# effect
    execute at @e[limit=1,tag=GM] run effect give @a[distance=..60] blindness 1 0 true
# damage
    data modify storage score_damage: Argument set value {Damage:1250.00,DamageType:"Projectile"}
    execute at @e[limit=1,tag=GM] as @a[distance=..60,tag=GameMasterBattle] run function score_damage:api/attack
