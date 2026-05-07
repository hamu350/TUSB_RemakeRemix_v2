#座標は要調整
summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["TypeChecked","SystemEntity","Spawner"],Passengers:[{id:"minecraft:spawner_minecart",Silent:1b,Invulnerable:1b,CustomDisplayTile:1b,DisplayOffset:0,SpawnCount:1,SpawnRange:4,Delay:-1,MinSpawnDelay:200s,MaxSpawnDelay:200s,MaxNearbyEntities:6,RequiredPlayerRange:16,Tags:["TypeChecked","SystemEntity","SpawnerCore","Spawner","SetSpawner"],DisplayState:{Name:"minecraft:chorus_plant"}}]}

data modify entity @e[tag=SetSpawner,limit=1,sort=nearest] SpawnData set from storage tusb_remake: spawn_data

data modify entity @e[tag=SetSpawner,limit=1,sort=nearest] SpawnPotentials set from storage tusb_remake: spawn_potentials

tag @e[tag=SetSpawner] remove SetSpawner

