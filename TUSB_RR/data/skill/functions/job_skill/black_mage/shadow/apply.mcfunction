#> skill:job_skill/black_mage/shadow/apply

execute store result score _ TUSB run time query gametime
summon minecraft:marker ~ ~ ~ {Tags:[shadowpoint,SystemEntity,TypeChecked]}
execute as @e[distance=..0.01,type=minecraft:marker,tag=shadowpoint] store result score @s TUSB run scoreboard players add _ TUSB 25

playsound entity.lightning_bolt.thunder master @a[distance=..30] ~ ~ ~ 0.3 1 0.1
execute as @e[distance=..15,type=#lib:mob,tag=Enemy,sort=nearest,limit=1] at @s run particle minecraft:totem_of_undying ~ ~ ~ 0.5 7 0.5 0 500 normal
execute as @e[tag=Enemy,sort=nearest,distance=..15] run tp @e[tag=Enemy,distance=..15] @s
execute as @e[distance=..15,type=#lib:mob,tag=Enemy,sort=nearest,limit=1] at @s run particle dust 0.490 0.122 0.490 9 ~ ~8 ~ 4 0 4 0.16 300 normal
execute as @e[distance=..15,type=#lib:mob,tag=Enemy,sort=nearest,limit=1] at @s run particle dust 0.702 0.663 0.690 9 ~ ~8 ~ 4 0 4 0.16 300 normal

schedule function skill:job_skill/black_mage/shadow/attack/ 25t append
