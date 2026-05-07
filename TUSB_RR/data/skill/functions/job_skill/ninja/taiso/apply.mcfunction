#> skill:job_skill/ninja/taiso/apply

execute at @e[distance=..20,type=#lib:mob,tag=Enemy,sort=nearest,limit=1] run summon armor_stand ~ ~ ~ {Tags:[taisosinnyo,CooldownRequired],PortalCooldown:220,Marker:true,NoAI:true,Invisible:true,Invulnerable:true}
playsound item.trident.thunder master @a[distance=..16] ~ ~ ~ 1 2 0
execute at @e[tag=taisosinnyo] run particle minecraft:witch ~ ~1 ~ 0.5 0.3 0.5 0 1 force @a

execute as @e[tag=taisosinnyo] run schedule function skill:job_skill/ninja/taiso/player 0.5s
