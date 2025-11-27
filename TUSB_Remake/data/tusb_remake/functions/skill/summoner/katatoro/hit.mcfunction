execute as @e[tag=FinalPoint] at @s run particle portal ~ ~ ~ 4 4 4 0.1 80 force
execute as @e[tag=FinalPoint] at @s run function tusb_remake:skill/summoner/katatoro/otomitame
data modify storage score_damage: Argument set value {Damage:80.00,DamageType:"None"}
execute at @e[tag=FinalPoint] as @e[tag=Enemy,type=#tusb_remake:mob,distance=..30] run function score_damage:api/attack
execute if data storage tusb_remake: {_:true} in minecraft:overworld run schedule function tusb_remake:skill/summoner/katatoro/hit 20t
