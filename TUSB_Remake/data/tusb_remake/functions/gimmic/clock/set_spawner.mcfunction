#> tusb_remake:gimmic/clock/set_spawner
# 時計島内部のスポナーを設定
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

summon minecraft:armor_stand ~ ~ ~ {Passengers:[{Invulnerable:true,MaxNearbyEntities:999s,RequiredPlayerRange:32s,SpawnCount:5s,MinSpawnDelay:200s,MaxSpawnDelay:400s,Delay:40s,SpawnRange:16s,SpawnData:{},id:"minecraft:spawner_minecart",CustomDisplayTile:true,Tags:[SpawnerCore,Spawner,SystemEntity,TypeChecked]}],Marker:true,Invisible:true,Invulnerable:true,Small:true,NoBasePlate:true,NoGravity:true,Tags:[Spawner,SystemEntity,TypeChecked]}
execute align xyz as @e[dx=0,type=minecraft:spawner_minecart,tag=SpawnerCore] run data modify entity @s SpawnData set from block -58 23 22 SpawnData
