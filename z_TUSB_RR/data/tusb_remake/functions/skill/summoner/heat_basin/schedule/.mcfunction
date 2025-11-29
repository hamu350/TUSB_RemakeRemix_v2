#> tusb_remake:skill/summoner/heat_basin/schedule/
### あつあつタライが飛んでいるときの処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage tusb_remake: _ set value false
data modify storage score_damage: Argument set value {Damage:50.00}
execute as @e[type=falling_block,tag=AtsuTarai] at @s run function tusb_remake:skill/summoner/heat_basin/schedule/fly

execute if data storage tusb_remake: {_:true} in minecraft:overworld run schedule function tusb_remake:skill/summoner/heat_basin/schedule/ 1t
