#> skill:job_skill/summoner/summon_glider/schedule/
### サモンバルーンの発射の音
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage tusb_remake: _ set value false
execute if entity @e[type=phantom,tag=Glider] as @a if predicate skill:on_glider at @s run function skill:job_skill/summoner/summon_glider/schedule/check

execute if data storage tusb_remake: {_:false} run function skill:job_skill/summoner/summon_glider/schedule/test

execute if data storage tusb_remake: {_:true} in minecraft:overworld run schedule function skill:job_skill/summoner/summon_glider/schedule/ 1t
