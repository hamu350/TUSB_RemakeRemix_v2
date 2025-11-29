execute at @s run summon armor_stand ~ ~ ~ {Tags:[syawa_,CooldownRequired],PortalCooldown:220,Marker:true,Invisible:true,Invulnerable:true,Small:true,NoGravity:true,NoBasePlate:true}
execute at @s run playsound block.beacon.deactivate master @a[distance=..16] ~ ~ ~ 2 1 0.1
execute if data storage tusb_remake: {_:true} in minecraft:overworld run schedule function tusb_remake:skill/black_mage/syawa_/apply 1s
# execute if data storage tusb_remake: {_:true} in minecraft:overworld at @e[tag=syawa_] run schedule function tusb_remake:skill/black_mage/syawa_/kill 220t