#> time_limit:boss/newstar_king/skill/time_manipulation/god_messenger/week

# radiusいくつくらいがいいかなぁ、5とか?
summon spawner_minecart ~ ~2 ~ {Invulnerable:1b,SpawnCount:2,SpawnRange:5,Delay:0,MaxNearbyEntities:10,RequiredPlayerRange:100,MinSpawnDelay:20,MaxSpawnDelay:20,SpawnData:{entity:{id:"minecraft:skeleton",CustomNameVisible:1b,Health:200f,Tags:["messenger","bomb","BossEnemy"],CustomName:'{"text":"Week"}',HandItems:[{id:"minecraft:tnt_minecart",Count:1b},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{},{},{},{id:"minecraft:beacon",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],Attributes:[{Name:generic.max_health,Base:200},{Name:generic.follow_range,Base:60},{Name:generic.movement_speed,Base:0.5},{Name:generic.attack_damage,Base:5}]},custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}}}}

schedule function time_limit:boss/newstar_king/skill/time_manipulation/god_messenger/week_bomb 7s