#> tusb_remake:gimmic/table_bridge/modify
# テーブルマウンテンの橋でゾンビさんたちが湧くようにする
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute positioned 15 ~ ~ if block ~ ~ ~ minecraft:spawner run data modify block ~ ~ ~ SpawnData.custom_spawn_rules set value {block_light_limit:{min_inclusive:0,max_inclusive:15},sky_light_limit:{min_inclusive:0,max_inclusive:15}}
execute positioned 35 ~ ~ if block ~ ~ ~ minecraft:spawner run data modify block ~ ~ ~ SpawnData.custom_spawn_rules set value {block_light_limit:{min_inclusive:0,max_inclusive:15},sky_light_limit:{min_inclusive:0,max_inclusive:15}}
