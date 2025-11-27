#> tusb_remake:spawner/update/
# スポナーのentityを置き換え

tellraw @a[tag=DebugInfo] {"translate":"function:tusb_remake:spawner/update/\nId:%s\nPos:%s","with":[{"score":{"name": "@s","objective": "SpawnerId"}},{"nbt": "Pos","entity": "@s"}]}

# スポナーのデータを取得
function tusb_remake:spawner/update/get_info/

# SpawnerIdが-1の場合は複数湧き、1以上の場合は単体湧き
data modify storage tusb_remake: _ set value true
execute if data storage asset:context {spawner:{SpawnData:{entity:{id:"minecraft:pig"}}}} unless data storage asset:context spawner.SpawnPotentials[0].data.entity.id run data modify storage tusb_remake: _ set value false
execute if data storage asset:context {spawner:{SpawnData:{entity:{id:"minecraft:pig"}}}} if data storage asset:context {spawner:{SpawnPotentials:[{data:{entity:{id:"minecraft:pig"}}}]}} run data modify storage tusb_remake: _ set value false
execute if score @s SpawnerId matches -1 if data storage tusb_remake: {_:true} run function tusb_remake:spawner/update/multi/
execute if score @s SpawnerId matches 1.. if data storage tusb_remake: {_:true} run function tusb_remake:spawner/update/single/

# contextを削除
data remove storage asset:context id
data remove storage asset:context new_spawner

# 最後に更新済みにする
scoreboard players operation @s SpawnerUpdate = _ SpawnerUpdate