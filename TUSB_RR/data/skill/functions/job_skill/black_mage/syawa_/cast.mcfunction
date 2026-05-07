#> skill:job_skill/black_mage/syawa_/cast

execute at @s run summon armor_stand ~ ~ ~ {Tags:[syawa_,CooldownRequired],PortalCooldown:220,Marker:true,Invisible:true,Invulnerable:true,Small:true,NoGravity:true,NoBasePlate:true}
execute at @s run playsound block.beacon.deactivate master @a[distance=..16] ~ ~ ~ 2 1 0.1
execute if data storage tusb_remake: {_:true} in minecraft:overworld run schedule function skill:job_skill/black_mage/syawa_/apply 1s
