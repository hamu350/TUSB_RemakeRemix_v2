#> time_limit:boss/newstar_king/skill/time_manipulation/god_messenger/micro_second

#summon skeleton ~ ~ ~ {CustomName:'{"text":"Micro Second"}',CustomNameVisible:1b,Health:1f,Tags:[],Passengers:[{id:"minecraft:area_effect_cloud",Particle:"block tnt",Radius:2f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:2147483547,DurationOnUse:0,Age:0,WaitTime:100,Tags:["TypeChecked","RidingRequired"],Effects:[{Id:7,Amplifier:3b,Duration:1},{Id:14,Amplifier:0b,Duration:10},{Id:19,Amplifier:4b,Duration:100}]}],HandItems:[{id:"minecraft:sunflower",Count:1b},{}],HandDropChances:[0.000F,0.000F],ArmorItems:[{},{},{},{id:"minecraft:beacon",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],Attributes:[{Name:"generic.max_health",Base:1},{Name:"generic.movement_speed",Base:1},{Name:"generic.follow_range",Base:60}]}

# TIPS: DurationとWaitTimeは競合するから2つを足した値がint最大値より大きくなってはいけない

# いけてるけど見た目や付与パーティクル、後は長さの調節

# こいつだけkb耐性なし

summon spawner_minecart ~ ~2 ~ {Invulnerable:1b,SpawnCount:2,SpawnRange:3,Delay:0,MaxNearbyEntities:10,RequiredPlayerRange:100,MinSpawnDelay:20,MaxSpawnDelay:20,SpawnData:{entity:{id:"minecraft:skeleton",CustomName:'{"text":"Micro Second"}',Tags:["messenger","BossEnemy"],CustomNameVisible:1b,Health:5f,Passengers:[{id:"minecraft:area_effect_cloud",Particle:"block tnt",Radius:2f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:2147483547,DurationOnUse:0,Age:0,WaitTime:100,Tags:["TypeChecked","RidingRequired","BossEnemy"],Effects:[{Id:7,Amplifier:4b,Duration:1},{Id:14,Amplifier:0b,Duration:10},{Id:19,Amplifier:4b,Duration:100}]}],HandItems:[{id:"minecraft:sunflower",Count:1b},{}],HandDropChances:[0.000F,0.000F],ArmorItems:[{},{},{},{id:"minecraft:beacon",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],Attributes:[{Name:"generic.max_health",Base:5},{Name:"generic.movement_speed",Base:1},{Name:"generic.follow_range",Base:60}]},custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}}}}