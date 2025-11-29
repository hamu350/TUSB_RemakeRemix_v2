#> tusb_remake:skill/black_mage/snow/apply
# 雪の壁を出す
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# execute rotated ~ 0 positioned ^-1.5 ^ ^1.5 run fill ~ ~ ~ ~ ~1 ~ minecraft:snow_block keep
# execute rotated ~ 0 positioned ^-1.0 ^ ^1.5 run fill ~ ~ ~ ~ ~1 ~ minecraft:snow_block keep
# execute rotated ~ 0 positioned ^-0.5 ^ ^1.5 run fill ~ ~ ~ ~ ~1 ~ minecraft:snow_block keep
# execute rotated ~ 0 positioned ^0.0 ^ ^1.5 run fill ~ ~ ~ ~ ~1 ~ minecraft:snow_block keep
# execute rotated ~ 0 positioned ^0.5 ^ ^1.5 run fill ~ ~ ~ ~ ~1 ~ minecraft:snow_block keep
# execute rotated ~ 0 positioned ^1.0 ^ ^1.5 run fill ~ ~ ~ ~ ~1 ~ minecraft:snow_block keep
# execute rotated ~ 0 positioned ^1.5 ^ ^1.5 run fill ~ ~ ~ ~ ~1 ~ minecraft:snow_block keep

summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,RadiusOnUse:0f,DurationOnUse:0,Duration:100,RadiusPerTick:0f,WaitTime:0,Age:0,Particle:"minecraft:end_rod",CustomName:'',CustomNameVisible:true,Tags:[Snow,TypeChecked]}
execute as @e[distance=..0.01,type=area_effect_cloud,tag=Snow] run tp @s ~ ~ ~ ~ 0

### スノウの判定を有効化
function tusb_remake:skill/black_mage/snow/schedule/
