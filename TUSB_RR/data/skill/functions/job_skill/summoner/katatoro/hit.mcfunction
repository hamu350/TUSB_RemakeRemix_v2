#> skill:job_skill/summoner/katatoro/hit

execute as @e[tag=FinalPoint] at @s run particle portal ~ ~ ~ 4 4 4 0.1 80 force
execute as @e[tag=FinalPoint] at @s run function skill:job_skill/summoner/katatoro/otomitame
data modify storage score_damage: Argument set value {Damage:120.00,DamageType:"None"}
execute at @e[tag=FinalPoint] as @e[tag=Enemy,type=#lib:mob,distance=..15] run function score_damage:api/attack
execute if data storage tusb_remake: {_:true} in minecraft:overworld run schedule function skill:job_skill/summoner/katatoro/hit 10t
