#> tusb_remake:spawner/update/single
# 一種類のスポナーの置き換え

tellraw @a[tag=DebugInfo] {"translate":"function:tusb_remake:spawner/update/single\nId:%s\nPos:%s","with":[{"score":{"name": "@s","objective": "SpawnerId"}},{"nbt": "Pos","entity": "@s"}]}

# idを取得
execute store result storage asset:context id int 1 run scoreboard players get @s SpawnerId
# idのmobのdataを取得
function #asset:mob/get_data
# mob情報を入れるstorageを作成
data modify storage asset:context new_spawner set value {SpawnData:{entity:{}},SpawnPotentials:{data:{entity:{}},weight:1}}
# SpawnDataに突っ込む
data modify storage asset:context new_spawner.SpawnData.entity set from storage asset: mob
# SpawnPotentialsが設定されている場合、そこにもmobを突っ込む
execute if data storage asset:context spawner.SpawnPotentials[0] unless data storage asset:context {spawner:{SpawnPotentials:[{data:{entity:{id:"minecraft:pig"}}}]}} run data modify storage asset:context new_spawner.SpawnPotentials[0].data.entity set from storage asset: mob
# 取得したデータを適応
execute if data storage asset: mob if predicate tusb_remake:is_vechicle_spawner on passengers run data modify entity @s {} merge from storage asset:context new_spawner
execute if data storage asset: mob if entity @s[tag=BlockSpawner] if block ~ ~ ~ spawner unless predicate tusb_remake:is_vechicle_spawner run data modify block ~ ~ ~ {} merge from storage asset:context new_spawner