#> skill:job_skill/archer/blast_shot/schedule/
### ブラストショットショットが飛んでいるときの処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage tusb_remake: _ set value false
execute as @e[type=#lib:arrow,tag=BlastShot] at @s run function skill:job_skill/archer/blast_shot/schedule/fly

execute if data storage tusb_remake: {_:true} in minecraft:overworld run schedule function skill:job_skill/archer/blast_shot/schedule/ 1t
