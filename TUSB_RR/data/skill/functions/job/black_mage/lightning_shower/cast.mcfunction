#> skill:job/black_mage/lightning_shower/cast

summon armor_stand ~ ~ ~ {Tags:[shower,CooldownRequired],PortalCooldown:220,Marker:true,Invisible:true,Invulnerable:true,Small:true,NoGravity:true,NoBasePlate:true}
playsound block.beacon.deactivate master @a[distance=..16] ~ ~ ~ 2 1 0.1
execute if data storage tusb_remake: {_:true} run schedule function skill:job/black_mage/lightning_shower/apply 1s
