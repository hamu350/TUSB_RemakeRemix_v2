#> skill:job_skill/summoner/abisu/schedule/

data modify storage tusb_remake: _ set value false

execute as @e[type=falling_block,tag=abisu] at @s run function skill:job_skill/summoner/abisu/schedule/fly

execute if data storage tusb_remake: {_:true} in minecraft:overworld run schedule function skill:job_skill/summoner/abisu/schedule/ 1t
