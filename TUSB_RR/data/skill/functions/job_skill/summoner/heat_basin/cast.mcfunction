#> skill:job_skill/summoner/heat_basin/cast
# あつあつタライ発動
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute as @e[distance=..15,type=#lib:mob,tag=Enemy] at @s anchored eyes positioned ^ ^ ^ anchored feet positioned ~ ~1.0 ~ run function skill:job_skill/summoner/heat_basin/summon

execute in minecraft:overworld run schedule function skill:job_skill/summoner/heat_basin/schedule/ 1t
