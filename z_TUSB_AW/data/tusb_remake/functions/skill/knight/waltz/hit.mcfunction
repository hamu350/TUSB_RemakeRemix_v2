execute as @e[tag=waltz] at @s run particle sweep_attack ~ ~ ~ 4 4 4 0.1 80 force
execute as @e[tag=waltz] at @s run function tusb_remake:skill/knight/waltz/otomitame
data modify storage score_damage: Argument set value {Damage:25.00,DamageType:"None"}
execute at @e[tag=waltz] as @e[tag=Enemy,type=#tusb_remake:mob,distance=..60] run function score_damage:api/attack
execute if data storage tusb_remake: {_:true} in minecraft:overworld run schedule function tusb_remake:skill/knight/waltz/hit 1t
