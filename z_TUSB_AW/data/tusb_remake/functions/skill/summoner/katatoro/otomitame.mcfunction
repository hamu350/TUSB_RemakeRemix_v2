execute at @e[type=#tusb_remake:mob,distance=..15,tag=!FinalPoint] run playsound entity.lightning_bolt.impact master @a[distance=..30] ~ ~ ~ 1 0 0
execute at @e[type=#tusb_remake:mob,distance=..15,tag=!FinalPoint] run playsound item.totem.use master @a[distance=..30] ~ ~ ~ 0.2 2 0
execute at @e[type=#tusb_remake:mob,distance=..15,tag=!FinalPoint] run particle dragon_breath ~ ~1 ~ 0.6 0.8 0.6 0.5 30 force
execute at @e[type=#tusb_remake:mob,distance=..15,tag=!FinalPoint] run particle witch ~ ~4 ~ 0.25 7 0.25 0.0 100 force
execute as @e[type=#tusb_remake:mob,distance=..15,tag=!FinalPoint,limit=8] run scoreboard players add @a[distance=..15] HealCount 2