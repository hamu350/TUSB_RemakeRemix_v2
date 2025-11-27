#> tusb_remake:skill/archer/kasap_trap/schedule/check
### ルカナントラップの効果判定
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# 変更点: 半径5mから3mへ、それに伴いパーティクルの位置を変更

# デフォ1-1-1-1-3-3-3-3-5-5-5-5

playsound entity.creeper.hurt master @a[distance=..16] ~ ~ ~ 0.15 2 0

### パーティクル表示
execute rotated as 0-0-1-0-1 rotated ~ ~ positioned ^ ^ ^1 run particle minecraft:smoke ~ ~ ~ 0 0 0 0 1 force
execute rotated as 0-0-1-0-1 rotated ~90 ~ positioned ^ ^ ^1 run particle minecraft:smoke ~ ~ ~ 0 0 0 0 1 force
execute rotated as 0-0-1-0-1 rotated ~180 ~ positioned ^ ^ ^1 run particle minecraft:smoke ~ ~ ~ 0 0 0 0 1 force
execute rotated as 0-0-1-0-1 rotated ~270 ~ positioned ^ ^ ^1 run particle minecraft:smoke ~ ~ ~ 0 0 0 0 1 force
execute rotated as 0-0-1-0-1 rotated ~ ~ positioned ^ ^ ^2 run particle minecraft:smoke ~ ~ ~ 0 0 0 0 1 force
execute rotated as 0-0-1-0-1 rotated ~90 ~ positioned ^ ^ ^2 run particle minecraft:smoke ~ ~ ~ 0 0 0 0 1 force
execute rotated as 0-0-1-0-1 rotated ~180 ~ positioned ^ ^ ^2 run particle minecraft:smoke ~ ~ ~ 0 0 0 0 1 force
execute rotated as 0-0-1-0-1 rotated ~270 ~ positioned ^ ^ ^2 run particle minecraft:smoke ~ ~ ~ 0 0 0 0 1 force
execute rotated as 0-0-1-0-1 rotated ~ ~ positioned ^ ^ ^3 run particle minecraft:smoke ~ ~ ~ 0 0 0 0 1 force
execute rotated as 0-0-1-0-1 rotated ~90 ~ positioned ^ ^ ^3 run particle minecraft:smoke ~ ~ ~ 0 0 0 0 1 force
execute rotated as 0-0-1-0-1 rotated ~180 ~ positioned ^ ^ ^3 run particle minecraft:smoke ~ ~ ~ 0 0 0 0 1 force
execute rotated as 0-0-1-0-1 rotated ~270 ~ positioned ^ ^ ^3 run particle minecraft:smoke ~ ~ ~ 0 0 0 0 1 force


scoreboard players operation _ KasapLevel = @s KasapLevel
execute as @e[distance=..3,type=#tusb_remake:mob,tag=Enemy,tag=!InKasap,sort=random,limit=3] run function tusb_remake:skill/archer/kasap_trap/schedule/apply

data modify storage tusb_remake: _ set value true
