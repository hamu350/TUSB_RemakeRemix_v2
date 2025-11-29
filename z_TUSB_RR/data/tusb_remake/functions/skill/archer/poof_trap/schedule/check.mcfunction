#> tusb_remake:skill/archer/poof_trap/schedule/check
### ニフラムトラップの効果判定
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:block.fire.ambient master @a[distance=..16] ~ ~ ~ 0.5 2 0

### パーティクル表示
execute rotated as 0-0-1-0-1 rotated ~ ~ positioned ^ ^ ^1 run particle minecraft:witch ~ ~ ~ 0 0 0 0 1 force
execute rotated as 0-0-1-0-1 rotated ~90 ~ positioned ^ ^ ^1 run particle minecraft:witch ~ ~ ~ 0 0 0 0 1 force
execute rotated as 0-0-1-0-1 rotated ~180 ~ positioned ^ ^ ^1 run particle minecraft:witch ~ ~ ~ 0 0 0 0 1 force
execute rotated as 0-0-1-0-1 rotated ~270 ~ positioned ^ ^ ^1 run particle minecraft:witch ~ ~ ~ 0 0 0 0 1 force
execute rotated as 0-0-1-0-1 rotated ~ ~ positioned ^ ^ ^3 run particle minecraft:witch ~ ~ ~ 0 0 0 0 1 force
execute rotated as 0-0-1-0-1 rotated ~90 ~ positioned ^ ^ ^3 run particle minecraft:witch ~ ~ ~ 0 0 0 0 1 force
execute rotated as 0-0-1-0-1 rotated ~180 ~ positioned ^ ^ ^3 run particle minecraft:witch ~ ~ ~ 0 0 0 0 1 force
execute rotated as 0-0-1-0-1 rotated ~270 ~ positioned ^ ^ ^3 run particle minecraft:witch ~ ~ ~ 0 0 0 0 1 force
execute rotated as 0-0-1-0-1 rotated ~ ~ positioned ^ ^ ^5 run particle minecraft:witch ~ ~ ~ 0 0 0 0 1 force
execute rotated as 0-0-1-0-1 rotated ~90 ~ positioned ^ ^ ^5 run particle minecraft:witch ~ ~ ~ 0 0 0 0 1 force
execute rotated as 0-0-1-0-1 rotated ~180 ~ positioned ^ ^ ^5 run particle minecraft:witch ~ ~ ~ 0 0 0 0 1 force
execute rotated as 0-0-1-0-1 rotated ~270 ~ positioned ^ ^ ^5 run particle minecraft:witch ~ ~ ~ 0 0 0 0 1 force


execute as @e[distance=..5,type=#tusb_remake:mob,tag=Poofable,sort=random,limit=3] run function tusb_remake:skill/archer/poof_trap/schedule/apply

data modify storage tusb_remake: _ set value true
