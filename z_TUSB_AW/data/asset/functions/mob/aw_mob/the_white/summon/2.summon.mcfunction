#> asset:mob/0001.the_white/summon/2.summon

function asset:mob/0001.the_white/data/2.data_set
summon spawner_minecart ~ ~ ~ {SpawnCount:1,SpawnRange:4,Delay:0,MaxNearbyEntities:99,RequiredPlayerRange:99,SpawnData:{entity:{}},Tags:["CooldownRequired","SummonMob"],PortalCooldown:2}
data modify entity @e[type=spawner_minecart,limit=1,tag=SummonMob,sort=nearest] SpawnData.entity set from storage asset: mob
data modify entity @e[type=spawner_minecart,limit=1,tag=SummonMob,sort=nearest] SpawnData.entity merge value {custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}}}
tag @e[tag=SummonMob] remove SummonMob