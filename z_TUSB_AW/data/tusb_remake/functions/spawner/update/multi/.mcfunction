#> tusb_remake:spawner/update/multi/
# 複数種類が湧くスポナーの置き換え

# oh_my_datを呼び出し
function #oh_my_dat:please
# idを別のリストに避難させる
data modify storage asset:context id set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].id
# Spawnerデータを取得しておく
function tusb_remake:spawner/update/get_info/
# 新しいSpawnPotentialsを作っておく
data modify storage asset:context new_spawner set value {SpawnData:{entity:{}},SpawnPotentials:[]}

# 再帰functionを起動
function tusb_remake:spawner/update/multi/repeat

# idsの1番目のmobを取得し、SpawnDataに突っ込む
data modify storage asset:context id set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].id[0]
function #asset:mob/get_data
data modify storage asset:context new_spawner.SpawnData.entity set from storage asset:mob {}

# new_spawnerを適応
execute if predicate tusb_remake:is_vechicle_spawner run data modify entity @s Passengers[0].SpawnPotentials merge from storage asset:context new_spawner
execute if block ~ ~ ~ spawner unless predicate tusb_remake:is_vechicle_spawner run data modify block ~ ~ ~ SpawnPotentials merge from storage asset:context new_spawner

# contextの削除は親functionで実行しているため不要