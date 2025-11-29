#> tusb_remake:spawner/update/
# スポナーのデータを取得する


# トロッコスポナーならentityデータを取得
execute if predicate tusb_remake:is_vechicle_spawner run data modify storage asset:context spawner set from entity @s Passengers[0]
# ブロックスポナーならblockデータを取得
execute unless predicate tusb_remake:is_vechicle_spawner if block ~ ~ ~ spawner run data modify storage asset:context spawner set from block ~ ~ ~ {}