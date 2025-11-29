#> tusb_remake:skill/archer/bird_strike/hit/schedule/fall
# バードストライク効果中
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

particle minecraft:cloud ~ ~ ~ 0.1 0.2 0.1 0.1 1 force

execute if predicate tusb_remake:under-64 run tag @s remove FallDown
execute unless data entity @s ActiveEffects[{Id:31}] run tag @s remove FallDown

data merge entity @s[tag=FallDown] {Motion:[0d,-1d,0d]}

data modify storage tusb_remake: _ set value true
