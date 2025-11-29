#> tusb_remake:spawner/update/multi/repeat
# idの列がなくなるまで繰り返す

# idの1番目のmobを取得
data modify storage asset:context id set from storage asset:context ids[0]
function #asset:mob/get_data

# SpawnPotentialsを追加
data modify storage asset:context new_spawner.SpawnPotentials append value {weight:1, data:{entity:{}}}
data modify storage asset:context new_spawner.SpawnPotentials[-1].weight set from storage asset:context spawner.SpawnPotentials[0].weight
data modify storage asset:context new_spawner.SpawnPotentials[-1].data.entity set from storage asset:mob {}

# idの列やSpawnPotentialsを消す
data remove storage asset:context ids[0]
data remove storage asset:context spawner.SpawnPotentials[0]

# idの列がまだあれば再帰
execute if data storage asset:context ids[0] run function tusb_remake:spawner/update/multi/repeat