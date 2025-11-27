#> tusb_remake:gimmic/sealed_alter/angry
# かつての驚異島
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

setblock ~ ~ ~ minecraft:spawner{SpawnCount:1s,SpawnRange:5s,MaxNearbyEntities:16s,Delay:1s,MaxSpawnDelay:10s,MinSpawnDelay:10s,RequiredPlayerRange:32s,SpawnData:{entity:{id:"minecraft:silverfish",CustomName:'"お知らせ"',CustomNameVisible:true,ArmorItems:[{},{},{},{id:"minecraft:white_wool",Count:1b}],ArmorDropChances:[0f,0f,0f,2f]}}} destroy

summon minecraft:bat 8 26 4 {NoAI:true,Passengers:[{id:"minecraft:tnt",Fuse:5s},{id:"minecraft:spawner_minecart",PortalCooldown:1,Tags:[CooldownRequired,TypeChecked],Delay:0s,MaxSpawnDelay:32000s,MinSpawnDelay:32000s,SpawnCount:200s,SpawnRange:64s,MaxNearbyEntities:300s,RequiredPlayerRange:120s,SpawnData:{entity:{id:"minecraft:falling_block",BlockState:{Name:"minecraft:fire"},Time:1,DropItem:false},SpawnPotentials:[{weight:1}]}}]}
