#> skill:job_skill/knight/will_of_knight/

playsound block.anvil.land master @a[distance=..16] ~ ~ ~ 1 2 0
particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.1 30 force

execute as @a[distance=..15] at @s run function skill:job_skill/knight/will_of_knight/apply
