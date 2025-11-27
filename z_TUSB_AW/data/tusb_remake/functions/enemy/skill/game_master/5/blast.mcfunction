#> tusb_remake:enemy/skill/game_master/5/blast
#
# 
#
# @within function tusb_remake:enemy/skill/game_master/5/

# particle
    execute as @e[limit=1,tag=GM] at @s run particle minecraft:explosion ~ ~ ~ 3 3 3 0.1 200 force
# sound
    execute as @e[limit=1,tag=GM] at @s run playsound minecraft:entity.generic.explode player @a[distance=..60,tag=GameMasterBattle] ~ ~ ~ 2 1
# damage
    data modify storage score_damage: Argument set value {Damage:600.00,DamageType:"Projectile"}
    execute as @a at @e[limit=1,tag=GM] if entity @s[distance=..10] run function score_damage:api/attack
# loop
    scoreboard players remove _ blast 1
    execute if score _ blast matches 1.. run schedule function tusb_remake:enemy/skill/game_master/5/blast 1s
