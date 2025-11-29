#> tusb_remake:skill/summoner/summon_healing_cat/
# サモンヒーリングを召喚(6050)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# 変更点: 移動速度の低下

playsound minecraft:entity.cat.ambient master @a[distance=..16] ~ ~ ~ 1 1.2 0
particle minecraft:effect ~ ~ ~ 0.5 0.5 0.5 0.001 30 force

summon minecraft:ocelot ~ ~1 ~ {Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.20d}],CustomName:'"ぬこ"',CustomNameVisible:true,Invulnerable:true,Silent:true,DeathTime:19s,PortalCooldown:360,Tags:[CooldownRequiredLong,TypeChecked],Passengers:[{id:"minecraft:area_effect_cloud",Effects:[{Id:10,Duration:1,Amplifier:5b,ShowParticles:true}],Radius:1.5f,RadiusOnUse:0f,DurationOnUse:0,Duration:300,RadiusPerTick:0f,WaitTime:60,Age:0,Particle:"minecraft:heart",Tags:[SystemEntity,TypeChecked]}],DeathLootTable:"minecraft:empty"}
