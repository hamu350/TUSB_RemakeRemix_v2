#> skill:job/ninja/taisosinnyo/apply

summon armor_stand ~ ~ ~ {Tags:[taisosinnyo,CooldownRequired],PortalCooldown:220,Marker:true,NoGravity:true,Invisible:true,Invulnerable:true}
playsound item.trident.thunder master @a[distance=..16] ~ ~ ~ 1 2 0
execute at @e[tag=taisosinnyo] run particle minecraft:witch ~ ~1 ~ 0.5 0.3 0.5 0 1 force @a

schedule function skill:job/ninja/taisosinnyo/damage 10t
