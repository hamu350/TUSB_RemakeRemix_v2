#> asset_manager:spawner/update/
# スポナーのデータを取得する


# トロッコスポナーならentityデータを取得
execute if predicate lib:spawner/is_vechicle_spawner run data modify storage asset:context spawner set from entity @s Passengers[0]
# ブロックスポナーならblockデータを取得
execute unless predicate lib:spawner/is_vechicle_spawner if block ~ ~ ~ spawner run data modify storage asset:context spawner set from block ~ ~ ~ {}