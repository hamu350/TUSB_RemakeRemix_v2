execute as @s at @e[type=#tusb_remake:mob,distance=..30,limit=1,sort=nearest] run summon armor_stand ~ ~ ~ {Tags:[crazy,CooldownRequired],PortalCooldown:220,Marker:true,Invisible:true,Invulnerable:true,Small:true,NoGravity:true,NoBasePlate:true}
execute at @e[type=#tusb_remake:mob,distance=..10,limit=1,sort=nearest] as @s run particle end_rod ~ ~4 ~ 0.25 7 0.25 0.0 70 force
execute at @e[type=#tusb_remake:mob,distance=..10,limit=1,sort=nearest] as @s run particle glow ~ ~4 ~ 0.25 7 0.25 0.0 100 force
data modify storage score_damage: Argument set value {Damage:1500.00,DamageType:"None"}
execute at @s as @e[tag=Enemy,type=#tusb_remake:mob,distance=..10,limit=1,sort=nearest] run function score_damage:api/attack
schedule function tusb_remake:skill/archer/crazy/hit 20t replace
