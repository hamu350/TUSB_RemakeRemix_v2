#> tusb_remake:event/rank/tle_addition/lost_animal

# 1.11~に出てきた新規の動物をランダムデスポーン

me 「君たち…誰？」

# ランダムで召喚する

# 1~17の乱数を取得
data modify storage math: in set value [1,17]
function #math:dice
# 乱数結果を代入する
execute store result score _ TUSB run data get storage math: out.sum

# 2体出したさはある

# ねことかカエルなどの色違いmobはどうなるんだろうか、これ。

# ねこはランダムだったけどカエルはバイオームで異なるからそれぞれランダムな色にしてあげないとダメだーね

# 一旦これで行くか、、
execute at @s if score _ TUSB matches 1 run summon spawner_minecart ~ ~1 ~ {Tags:["CooldownRequired"],PortalCooldown:10,SpawnCount:3,SpawnRange:5,MinSpawnDelay:10,MaxSpawnDelay:10,MaxNearbyEntities:99,RequiredPlayerRange:999,SpawnData:{entity:{id:"minecraft:llama",Tags:["TypeChecked","ShieldTried"]},custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}}}}
execute at @s if score _ TUSB matches 1 run summon spawner_minecart ~ ~1 ~ {Tags:["CooldownRequired"],PortalCooldown:10,SpawnCount:3,SpawnRange:5,MinSpawnDelay:10,MaxSpawnDelay:10,MaxNearbyEntities:99,RequiredPlayerRange:999,SpawnData:{entity:{id:"minecraft:parrot",Tags:["TypeChecked","ShieldTried"]},custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}}}}
execute at @s if score _ TUSB matches 1 run summon spawner_minecart ~ ~1 ~ {Tags:["CooldownRequired"],PortalCooldown:10,SpawnCount:3,SpawnRange:5,MinSpawnDelay:10,MaxSpawnDelay:10,MaxNearbyEntities:99,RequiredPlayerRange:999,SpawnData:{entity:{id:"minecraft:dolphin",Tags:["TypeChecked","ShieldTried"]},custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}}}}
execute at @s if score _ TUSB matches 1 run summon spawner_minecart ~ ~1 ~ {Tags:["CooldownRequired"],PortalCooldown:10,SpawnCount:3,SpawnRange:5,MinSpawnDelay:10,MaxSpawnDelay:10,MaxNearbyEntities:99,RequiredPlayerRange:999,SpawnData:{entity:{id:"minecraft:cod",Tags:["TypeChecked","ShieldTried"]},custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}}}}
execute at @s if score _ TUSB matches 1 run summon spawner_minecart ~ ~1 ~ {Tags:["CooldownRequired"],PortalCooldown:10,SpawnCount:3,SpawnRange:5,MinSpawnDelay:10,MaxSpawnDelay:10,MaxNearbyEntities:99,RequiredPlayerRange:999,SpawnData:{entity:{id:"minecraft:salmon",Tags:["TypeChecked","ShieldTried"]},custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}}}}
execute at @s if score _ TUSB matches 1 run summon spawner_minecart ~ ~1 ~ {Tags:["CooldownRequired"],PortalCooldown:10,SpawnCount:3,SpawnRange:5,MinSpawnDelay:10,MaxSpawnDelay:10,MaxNearbyEntities:99,RequiredPlayerRange:999,SpawnData:{entity:{id:"minecraft:pufferfish",Tags:["TypeChecked","ShieldTried"]},custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}}}}
execute at @s if score _ TUSB matches 1 run summon spawner_minecart ~ ~1 ~ {Tags:["CooldownRequired"],PortalCooldown:10,SpawnCount:3,SpawnRange:5,MinSpawnDelay:10,MaxSpawnDelay:10,MaxNearbyEntities:99,RequiredPlayerRange:999,SpawnData:{entity:{id:"minecraft:turtle",Tags:["TypeChecked","ShieldTried"]},custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}}}}
execute at @s if score _ TUSB matches 1 run summon spawner_minecart ~ ~1 ~ {Tags:["CooldownRequired"],PortalCooldown:10,SpawnCount:3,SpawnRange:5,MinSpawnDelay:10,MaxSpawnDelay:10,MaxNearbyEntities:99,RequiredPlayerRange:999,SpawnData:{entity:{id:"minecraft:tropical_fish",Tags:["TypeChecked","ShieldTried"]},custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}}}}
execute at @s if score _ TUSB matches 1 run summon spawner_minecart ~ ~1 ~ {Tags:["CooldownRequired"],PortalCooldown:10,SpawnCount:3,SpawnRange:5,MinSpawnDelay:10,MaxSpawnDelay:10,MaxNearbyEntities:99,RequiredPlayerRange:999,SpawnData:{entity:{id:"minecraft:cat",Tags:["TypeChecked","ShieldTried"]},custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}}}}
execute at @s if score _ TUSB matches 1 run summon spawner_minecart ~ ~1 ~ {Tags:["CooldownRequired"],PortalCooldown:10,SpawnCount:3,SpawnRange:5,MinSpawnDelay:10,MaxSpawnDelay:10,MaxNearbyEntities:99,RequiredPlayerRange:999,SpawnData:{entity:{id:"minecraft:fox",Tags:["TypeChecked","ShieldTried"]},custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}}}}
execute at @s if score _ TUSB matches 1 run summon spawner_minecart ~ ~1 ~ {Tags:["CooldownRequired"],PortalCooldown:10,SpawnCount:3,SpawnRange:5,MinSpawnDelay:10,MaxSpawnDelay:10,MaxNearbyEntities:99,RequiredPlayerRange:999,SpawnData:{entity:{id:"minecraft:panda",Tags:["TypeChecked","ShieldTried"]},custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}}}}
execute at @s if score _ TUSB matches 1 run summon spawner_minecart ~ ~1 ~ {Tags:["CooldownRequired"],PortalCooldown:10,SpawnCount:3,SpawnRange:5,MinSpawnDelay:10,MaxSpawnDelay:10,MaxNearbyEntities:99,RequiredPlayerRange:999,SpawnData:{entity:{id:"minecraft:bee",Tags:["TypeChecked","ShieldTried"]},custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}}}}
execute at @s if score _ TUSB matches 1 run summon spawner_minecart ~ ~1 ~ {Tags:["CooldownRequired"],PortalCooldown:10,SpawnCount:3,SpawnRange:5,MinSpawnDelay:10,MaxSpawnDelay:10,MaxNearbyEntities:99,RequiredPlayerRange:999,SpawnData:{entity:{id:"minecraft:axolotl",Tags:["TypeChecked","ShieldTried"]},custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}}}}
execute at @s if score _ TUSB matches 1 run summon spawner_minecart ~ ~1 ~ {Tags:["CooldownRequired"],PortalCooldown:10,SpawnCount:3,SpawnRange:5,MinSpawnDelay:10,MaxSpawnDelay:10,MaxNearbyEntities:99,RequiredPlayerRange:999,SpawnData:{entity:{id:"minecraft:goat",Tags:["TypeChecked","ShieldTried"]},custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}}}}
execute at @s if score _ TUSB matches 1 run summon spawner_minecart ~ ~1 ~ {Tags:["CooldownRequired"],PortalCooldown:10,SpawnCount:3,SpawnRange:5,MinSpawnDelay:10,MaxSpawnDelay:10,MaxNearbyEntities:99,RequiredPlayerRange:999,SpawnData:{entity:{id:"minecraft:allay",Tags:["TypeChecked","ShieldTried"]},custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}}}}
execute at @s if score _ TUSB matches 16 run function tusb_remake:event/rank/tle_addition/animal/frog
execute at @s if score _ TUSB matches 1 run summon spawner_minecart ~ ~1 ~ {Tags:["CooldownRequired"],PortalCooldown:10,SpawnCount:3,SpawnRange:5,MinSpawnDelay:10,MaxSpawnDelay:10,MaxNearbyEntities:99,RequiredPlayerRange:999,SpawnData:{entity:{id:"minecraft:tadpole",Tags:["TypeChecked","ShieldTried"]},custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}}}}