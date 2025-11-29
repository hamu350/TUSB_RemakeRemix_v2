#> tusb_remake:skill/summoner/summon_balloon/schedule/
### サモンバルーンの発射の音
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage tusb_remake: _ set value false
execute as @e[type=arrow,tag=YouCanFly] at @s run function tusb_remake:skill/summoner/summon_balloon/schedule/check

execute if data storage tusb_remake: {_:true} in minecraft:overworld run schedule function tusb_remake:skill/summoner/summon_balloon/schedule/ 1t
