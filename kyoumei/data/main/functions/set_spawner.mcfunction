#> main:set_spawner

function #oh_my_dat:please

execute align xyz run summon armor_stand ~0.5 ~ ~0.5 {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["TypeChecked","SystemEntity","Spawner"],Passengers:[{SpawnCount:0,id:"minecraft:spawner_minecart",Silent:1b,Invulnerable:1b,CustomDisplayTile:1b,Tags:["TypeChecked","SystemEntity","SpawnerCore","Spawner","SetSpawner"],DisplayState:{Name:"minecraft:chorus_plant"}}]}

data modify entity @e[limit=1,tag=SetSpawner] SpawnData set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].spawner.SpawnData

data modify entity @e[limit=1,tag=SetSpawner] SpawnPotentials set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].spawner.SpawnPotentials

data modify entity @e[limit=1,tag=SetSpawner] Delay set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].spawner.Delay

data modify entity @e[limit=1,tag=SetSpawner] MinSpawnDelay set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].spawner.MinSpawnDelay

data modify entity @e[limit=1,tag=SetSpawner] MaxSpawnDelay set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].spawner.MaxSpawnDelay

data modify entity @e[limit=1,tag=SetSpawner] RequiredPlayerRange set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].spawner.RequiredPlayerRenge

data modify entity @e[limit=1,tag=SetSpawner] SpawnCount set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].spawner.SpawnCount

data modify entity @e[limit=1,tag=SetSpawner] SpawnRange set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].spawner.SpawnRange

data modify entity @e[limit=1,tag=SetSpawner] DisplayOffset set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].spawner.DisplayOffset

data modify entity @e[limit=1,tag=SetSpawner] DisplayState set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].spawner.DisplayState

# 情報表示
function name:a
function main:name

tag @e[tag=SetSpawner] remove SetSpawner
