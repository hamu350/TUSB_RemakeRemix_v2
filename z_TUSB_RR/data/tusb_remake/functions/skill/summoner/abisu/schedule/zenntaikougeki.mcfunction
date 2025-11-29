effect give @a[distance=..20] haste 15 1 true
effect give @a[distance=..20] strength 15 5 true
data modify storage score_damage: Argument set value {Damage:40.00,DamageType:"None"}
execute as @e[type=#tusb_remake:mob,tag=Enemy,distance=..20,limit=1,sort=nearest] run function score_damage:api/attack