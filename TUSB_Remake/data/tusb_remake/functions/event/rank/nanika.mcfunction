#> tusb_remake:event/rank/nanika
# イベントモブ召喚
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

me 「…何かに狙われてる！」
summon minecraft:spawner_minecart ~ ~ ~ {Invulnerable:true,MinSpawnDelay:32000s,MaxSpawnDelay:32000s,SpawnCount:3s,SpawnRange:30s,RequiredPlayerRange:99s,MaxNearbyEntities:999s,SpawnPotentials:[{weight:1,data:{entity:{}}}],Motion:[0d,1d,0d],SpawnData:{entity:{Health:0f,DeathTime:19s,id:"villager",Passengers:[{id:"bat",Health:100f,Attributes:[{Name:"minecraft:generic.follow_range",Base:32d},{Name:"minecraft:generic.max_health",Base:100d}],Passengers:[{id:"guardian",Elder:1b,DeathLootTable:"usb:events/sniper",CustomName:'"好撃球"',Attributes:[{Name:"minecraft:generic.follow_range",Base:60d}],ActiveEffects:[{Id:14,Amplifier:127b,ShowParticles:1b,Duration:2147483647}],Passengers:[{CustomName:'"エルダーパール"',id:"potion",Passengers:[{WaitTime:6000,Particle:"block air",CustomName:"DEATHCOUNT",Duration:150,Radius:0.1f,RadiusOnUse:0f,ReapplicationDelay:0,Effects:[{Id:7,Amplifier:50b,Duration:20}],id:"area_effect_cloud"}]}]}]}]}},Tags:[CooldownRequired,TypeChecked],PortalCooldown:11,Delay:10s}
