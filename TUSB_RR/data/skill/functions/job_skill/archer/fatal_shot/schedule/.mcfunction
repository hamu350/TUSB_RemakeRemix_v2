#> skill:job_skill/archer/fatal_shot/schedule/
### フェイタルショットが飛んでいるときの処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage tusb_remake: _ set value false
execute as @e[type=#lib:arrow,tag=GhastCannon] at @s run function skill:job_skill/archer/fatal_shot/schedule/fly

execute if data storage tusb_remake: {_:true} in minecraft:overworld run schedule function skill:job_skill/archer/fatal_shot/schedule/ 1t
