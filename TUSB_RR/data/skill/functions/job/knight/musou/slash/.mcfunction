#> skill:job_skill/knight/musou/slash/

execute store result score _ TUSB run time query gametime
execute as @e[tag=MusouPoint] if score @s TUSB = _ TUSB at @s as @e[distance=..30,type=#lib:mob,tag=Enemy] at @s run function skill:job_skill/knight/musou/slash/target

execute as @e[tag=MusouPoint] if score @s TUSB <= _ TUSB run kill @s


