#> tusb_remake:spawner/set/
# storageに突っ込まれた情報を元にスポナーを生成するfunction

# 足りないデータがあれば突っ込む
execute unless data storage asset: set_spawner.SpawnMob run tellraw @s "§c§lスポーンするMobのIdが入力されていないので、\nSpawner Updateが適応されません"
execute unless data storage asset: set_spawner.SpawnCount run data modify storage asset: set_spawner.SpawnCount set value 1
execute unless data storage asset: set_spawner.SpawnRange run data modify storage asset: set_spawner.SpawnRange set value 4
execute unless data storage asset: set_spawner.Delay run data modify storage asset: set_spawner.Delay set value 1
execute unless data storage asset: set_spawner.MinSpawnDelay run data modify storage asset: set_spawner.MinSpawnDelay set value 100
execute unless data storage asset: set_spawner.MaxSpawnDelay run data modify storage asset: set_spawner.MaxSpawnDelay set value 700
execute unless data storage asset: set_spawner.RequiredPlayerRange run data modify storage asset: set_spawner.RequiredPlayerRange set value 32
execute unless data storage asset: set_spawner.CustomDisplayTile run data modify storage asset: set_spawner merge value {CustomDisplayTile:1b,DisplayOffset:12,DisplayState:{Name:"minecraft:chorus_plant"}}

data modify storage _: _ set from storage asset: set_spawner.SpawnMob
data remove storage asset: set_spawner.SpawnMob

summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Passengers:[{id:"spawner_minecart",SpawnCount:0,Tags:["SetSpawner","TypeCheaked","SystemEntity","SpawnerCore","Spawner"],Invulnerable:true}]}

execute as @e[tag=SetSpawner,limit=1] at @s run function tusb_remake:spawner/set/set_data

data remove storage asset: set_spawner
data remove storage _: _