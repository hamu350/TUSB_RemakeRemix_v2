#> skill:job_skill/black_mage/shadow/attack/

execute store result score _ TUSB run time query gametime
execute as @e[tag=shadowpoint] if score @s TUSB = _ TUSB at @s as @e[distance=..15,type=#lib:mob,tag=Enemy] at @s run function skill:job_skill/black_mage/shadow/attack/target
execute as @e[tag=shadowpoint] if score @s TUSB = _ TUSB at @s run playsound block.end_portal.spawn master @a[distance=..20] ~ ~ ~ 0.1 1 0

execute as @e[tag=shadowpoint] if score @s TUSB <= _ TUSB run kill @s
