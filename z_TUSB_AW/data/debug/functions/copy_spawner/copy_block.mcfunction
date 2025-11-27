#> debug:copy_spawner/copy

data remove storage _: _

# 軽量化のため一度storageに移す
data modify storage _: spawner set from block ~ ~ ~

data modify storage _: _.Delay set from storage _: spawner.Delay
data modify storage _: _.MinSpawnDelay set from storage _: spawner.MinSpawnDelay
data modify storage _: _.MaxSpawnDelay set from storage _: spawner.MaxSpawnDelay
data modify storage _: _.SpawnCount set from storage _: spawner.SpawnCount
data modify storage _: _.SpawnRange set from storage _: spawner.SpawnRange
data modify storage _: _.RequiredPlayerRange set from storage _: spawner.RequiredPlayerRange
data modify storage _: _.CustomDisplayTile set from storage _: spawner.CustomDisplayTile
data modify storage _: _.DisplayOffset set from storage _: spawner.DisplayOffset
data modify storage _: _.DisplayState set from storage _: spawner.DisplayState
execute if data storage _: spawner.SpawnPotentials[0].data.entity.id run data modify storage _: _.Once set value true
execute if data storage _: {Spawner:{SpawnPotentials:[{data:{entity:{id:"minecraft:pig"}}}]}} run data modify storage _: _.Once set value true
execute if predicate tusb_remake:is_aura_spawner run data modify storage _: _.Aura set value true

data modify storage _: _.SpawnMob append value {AssetId:0}
execute store result storage _: _.SpawnMob[0].AssetId int 1 run scoreboard players get @s SpawnerId

data remove storage _: spawner