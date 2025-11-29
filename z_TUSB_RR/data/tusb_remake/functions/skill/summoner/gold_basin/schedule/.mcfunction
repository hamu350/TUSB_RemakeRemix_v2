#> tusb_remake:skill/summoner/gold_basin/schedule/
### 金タライが飛んでいるときの処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage tusb_remake: _ set value false
data modify storage score_damage: Argument set value {Damage:25.00}
execute as @e[type=falling_block,tag=KanaTarai] at @s run function tusb_remake:skill/summoner/gold_basin/schedule/fly

execute if data storage tusb_remake: {_:true} in minecraft:overworld run schedule function tusb_remake:skill/summoner/gold_basin/schedule/ 1t
