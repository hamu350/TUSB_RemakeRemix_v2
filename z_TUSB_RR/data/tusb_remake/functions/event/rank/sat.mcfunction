#> tusb_remake:event/rank/sat
# イベントモブ召喚
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

me 「クモだー！」
summon spawner_minecart ~ ~ ~ {Invulnerable:true,MinSpawnDelay:32000s,MaxSpawnDelay:32000s,SpawnCount:2s,SpawnRange:5s,RequiredPlayerRange:99s,MaxNearbyEntities:999s,SpawnPotentials:[{weight:1,data:{entity:{}}}],Motion:[0d,1d,0d],SpawnData:{entity:{id:"villager",Health:0f,DeathTime:19s,Passengers:[{id:"cave_spider",DeathLootTable:"usb:events/sat",Tags:[CanSpin],CustomName:'"SAT"',CustomNameVisible:true,Health:300f,Attributes:[{Name:"minecraft:generic.max_health",Base:300d},{Name:"minecraft:generic.follow_range",Base:32d},{Name:"minecraft:generic.attack_damage",Base:15d},{Name:"minecraft:generic.movement_speed",Base:0.4d},{Name:"minecraft:generic.knockback_resistance",Base:0.5d},{Name:"minecraft:generic.armor",Base:12d}],Passengers:[{id:"guardian",Silent:true,CustomName:'"10式0.3m小銃"',Health:100f,Attributes:[{Name:"minecraft:generic.max_health",Base:100d},{Name:"minecraft:generic.follow_range",Base:32d},{Name:"minecraft:generic.attack_damage",Base:30d}],ActiveEffects:[{Id:12,Amplifier:0b,Duration:2147483647,ShowParticles:false},{Id:14,Amplifier:0b,Duration:2147483647,ShowParticles:false}]}]}]}},Tags:[CooldownRequired,TypeChecked],PortalCooldown:4,Delay:3s}
