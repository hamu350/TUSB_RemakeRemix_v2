execute at @e[type=#tusb_remake:mob,distance=..10,tag=!crazy] run playsound item.trident.riptide_1 master @a[distance=..30] ~ ~ ~ 1 2 0
execute at @e[type=#tusb_remake:mob,distance=..10,tag=!crazy] run playsound item.trident.throw master @a[distance=..30] ~ ~ ~ 0.2 2 0
execute at @e[type=#tusb_remake:mob,distance=..10,tag=!crazy] run particle enchanted_hit ~ ~1 ~ 0.2 0.3 0.2 0.5 50 force
execute as @e[type=#tusb_remake:mob,distance=..10,tag=!crazy,limit=8] run scoreboard players add @a[distance=..15] HealCount 4