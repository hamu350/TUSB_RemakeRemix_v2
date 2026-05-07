#> world_manager:area/conquer/
# 島攻略時の処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute if predicate world_manager:area/nether run function world_manager:area/conquer/nether
execute if predicate world_manager:area/end run function world_manager:area/conquer/end
execute if predicate world_manager:area/skyland run function world_manager:area/conquer/skyland
execute if predicate world_manager:area/underworld run function world_manager:area/conquer/underworld
execute if predicate world_manager:area/cloudia run function world_manager:area/conquer/cloudia
execute if predicate world_manager:area/table_mountain run function world_manager:area/conquer/table_mountain
execute if predicate world_manager:area/gullivers_land run function world_manager:area/conquer/gullivers_land
execute if predicate world_manager:area/tocult_colde run function world_manager:area/conquer/tocult_colde

## 00.0%
function world_manager:area/conquer/total

execute as @a at @s run playsound minecraft:entity.ender_dragon.death master @s ~ ~ ~ 0.3 2 0.3
execute as @a at @s run particle minecraft:happy_villager ~ ~ ~ 1 1 1 0 30 normal
execute as @a at @s run particle minecraft:instant_effect ~ ~1 ~ 1 1 1 0.1 90 normal
summon minecraft:firework_rocket ~ ~1 ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{}},Tags:[ConquerFirework]}

title @a times 5 150 20
title @a subtitle {"translate":"攻略率 : %1$s/%2$s (%3$s.%4$s%%)","italic":true,"color":"white","with":[{"nbt":"conquer.count.total","storage":"tusb_remake:","bold":true,"italic":false},{"score":{"name":"MaxPortalCount","objective":"Settings"}},{"nbt":"conquer.rate.int[]","storage":"tusb_remake:","separator":""},{"nbt":"conquer.rate.cent[]","storage":"tusb_remake:","separator":""}]}
title @a title {"text":"島を攻略した！","color":"gold","bold":true}
effect give @a minecraft:instant_health 1 6 true
effect give @a minecraft:saturation 1 19 true

execute store result score 経過時間 Settings run time query gametime
execute store result score _ Settings run data get storage tusb_remake: start_time
execute store result storage math: in int 1 run scoreboard players operation 経過時間 Settings -= _ Settings
## 経過時間を表示用に分割
function #math:clock

tellraw @a [{"translate":"攻略タイム : %1$s","italic":true,"bold":true,"color":"white","with":[{"translate":"%1$s時間%2$s分%3$s秒","italic":false,"with":[{"nbt":"out.total_hour","storage":"math:"},{"nbt":"out.minute","storage":"math:"},{"nbt":"out.second","storage":"math:"}]}]},{"nbt":"_","storage":"tusb_remake:","interpret":true}]

scoreboard players reset @s UseEnderEye

### 夜をつかさどる島だった場合、夜固定を解除
execute in minecraft:overworld if block 3 77 87 minecraft:end_portal_frame[eye=true] run function world_manager:area/conquer/luna
### 交易島だった場合、祈りを解禁
execute in minecraft:overworld if block -70 15 32 minecraft:end_portal_frame[eye=true] run function world_manager:area/conquer/traders_island

# 15島攻略した場合の処理
execute if data storage tusb_remake: conquer.count{total:15} as @a run tellraw @a {"translate": "テーブルマウンテンに行けるようになった！","color": "green"}

# 20島攻略した場合の処理
execute if data storage tusb_remake: conquer.count{total:20} as @a run tellraw @a {"translate": "EXドメインにて周回ボス戦ができるようになりました！","color": "yellow"}

# 50島攻略した場合の処理
execute if data storage tusb_remake: conquer.count{total:50} positioned -2720 9 122 run forceload add ~ ~ ~ ~
execute if data storage tusb_remake: conquer.count{total:50} run schedule function world_manager:area/conquer/island_complete_50 1t

# 80島攻略した場合の処理
execute if data storage tusb_remake: conquer.count{total:80} as @a run function world_manager:area/conquer/island_complete_80

### ハードコアモードだった場合全員を復活
execute if data storage tusb_remake: settings{hardcore:true} as @a[tag=death] run function core:hard_core_mode/respawn
