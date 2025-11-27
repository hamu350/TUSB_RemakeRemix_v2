#> tusb_remake:skill/summoner/tsuntsun/fungus/attack/schedule/
### つんつん雪玉が飛んでいるときの処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage tusb_remake: _ set value false
execute as @e[type=snowball,tag=TsuntsunSnowball] at @s run function tusb_remake:skill/summoner/tsuntsun/fungus/attack/schedule/fly
execute as @e[type=wolf,tag=TsuntsunDash] at @s run function tusb_remake:skill/summoner/tsuntsun/fungus/attack/schedule/dash

execute if data storage tusb_remake: {_:true} in minecraft:overworld run schedule function tusb_remake:skill/summoner/tsuntsun/fungus/attack/schedule/ 1t
