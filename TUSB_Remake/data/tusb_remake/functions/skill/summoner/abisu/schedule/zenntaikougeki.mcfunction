effect give @a[distance=..20] haste 15 1 true
effect give @a[distance=..20] strength 15 5 true
scoreboard players add @a[distance=..20] HealCount 5
execute as @a[distance=..20] run function tusb_remake:player/clear_bad_effect
data modify storage score_damage: Argument set value {Damage:40.00,DamageType:"None"}
execute as @e[type=#tusb_remake:mob,tag=Enemy,distance=..20,limit=1,sort=nearest] run function score_damage:api/attack