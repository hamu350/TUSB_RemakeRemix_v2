#> skill:job_skill/archer/e_su/schedule/

data modify storage tusb_remake: _ set value false
execute as @e[type=arrow,tag=e_su] at @s run function skill:job_skill/archer/e_su/schedule/fly

execute if data storage tusb_remake: {_:true} in minecraft:overworld run schedule function skill:job_skill/archer/e_su/schedule/ 1t
