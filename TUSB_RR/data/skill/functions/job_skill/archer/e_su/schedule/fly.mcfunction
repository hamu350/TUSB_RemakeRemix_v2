#> skill:job_skill/archer/e_su/schedule/fly

playsound entity.experience_orb.pickup master @a[distance=..32] ~ ~ ~ 0.3 2 0.05
particle end_rod ~ ~0.2 ~ 2 2 2 0.1 50 force
execute as @a[distance=..32] at @e[tag=e_su] run function player_manager:effect/clear_bad_effect
execute as @e[distance=..45,type=#lib:mob,tag=Enemy,nbt=!{ActiveEffects:[{Id:23}]}] at @s run function skill:job_skill/archer/e_su/schedule/hit
scoreboard players add @a[distance=..32] HealCount 4
data modify storage tusb_remake: _ set value true
