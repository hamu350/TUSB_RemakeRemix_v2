execute at @s run summon marker ~ ~ ~ {Tags:[syawa_,CooldownRequired],PortalCooldown:220}
execute at @s run playsound block.beacon.deactivate master @a[distance=..16] ~ ~ ~ 2 1 0.1
execute if data storage tusb_remake: {_:true} in minecraft:overworld run schedule function tusb_remake:skill/black_mage/syawa_/apply 1s
