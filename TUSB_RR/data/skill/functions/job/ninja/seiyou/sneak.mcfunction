#> skill:job_skill/ninja/choyaku/sneak
# 跳躍を発動(222X)

execute if score @s CurrentMode matches 2260..2269 if entity @s[nbt={OnGround:true}] run function skill:job_skill/ninja/seiyou/triggered
execute if score @s SneakTime matches 1.. if score @s CurrentMode matches 2260..2269 if entity @s[nbt={OnGround:true}] run playsound entity.ender_dragon.flap master @a[distance=..16] ~ ~ ~ 8 0.8 0
execute if score @s SneakTime matches 1.. if score @s CurrentMode matches 2260..2269 if entity @s[nbt={OnGround:true}] run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1.0 0.75 0.0
scoreboard players reset @s SneakTime

advancement revoke @s only skill:trigger/ninja/seiyou/sneak
