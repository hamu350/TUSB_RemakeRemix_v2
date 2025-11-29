#> tusb_remake:skill/archer/poof_trap/schedule/
### ニフラムトラップの効果判定
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### システムマーカーに向きを保存
execute as 0-0-1-0-1 at @s run tp @s ~ ~ ~ ~5 0

data modify storage tusb_remake: _ set value false
execute as @e[type=snowball,tag=Poof] at @s run function tusb_remake:skill/archer/poof_trap/schedule/check

execute if data storage tusb_remake: {_:true} in minecraft:overworld run schedule function tusb_remake:skill/archer/poof_trap/schedule/ 1t
