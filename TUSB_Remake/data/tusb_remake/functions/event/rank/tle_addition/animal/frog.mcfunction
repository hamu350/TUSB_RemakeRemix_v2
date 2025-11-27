#> tusb_remake:event/rank/tle_addition/animal/frog

# カエルの色を抽選する

# 1~3の乱数を取得
data modify storage math: in set value [1,3]
function #math:dice
# 乱数結果を代入する
execute store result score _ TUSB run data get storage math: out.sum

# 結果に応じて色を変化させる
execute if score _ TUSB matches 1 run summon spawner_minecart ~ ~1 ~ {Tags:["CooldownRequired"],PortalCooldown:10,SpawnCount:3,SpawnRange:5,MinSpawnDelay:10,MaxSpawnDelay:10,MaxNearbyEntities:99,RequiredPlayerRange:999,SpawnData:{entity:{id:"minecraft:frog",variant:{"minecraft:temperate"},Tags:["TypeChecked","ShieldTried"]},custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}}}}
execute if score _ TUSB matches 2 run summon spawner_minecart ~ ~1 ~ {Tags:["CooldownRequired"],PortalCooldown:10,SpawnCount:3,SpawnRange:5,MinSpawnDelay:10,MaxSpawnDelay:10,MaxNearbyEntities:99,RequiredPlayerRange:999,SpawnData:{entity:{id:"minecraft:frog",variant:{"minecraft:warm"},Tags:["TypeChecked","ShieldTried"]},custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}}}}
execute if score _ TUSB matches 3 run summon spawner_minecart ~ ~1 ~ {Tags:["CooldownRequired"],PortalCooldown:10,SpawnCount:3,SpawnRange:5,MinSpawnDelay:10,MaxSpawnDelay:10,MaxNearbyEntities:99,RequiredPlayerRange:999,SpawnData:{entity:{id:"minecraft:frog",variant:{"minecraft:cold"},Tags:["TypeChecked","ShieldTried"]},custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}}}}