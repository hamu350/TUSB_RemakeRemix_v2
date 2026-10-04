#> skill:job_skill/ninja/suiton/
# 水遁を発動させる(202X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:entity.wolf.pant master @a[distance=..16] ~ ~ ~ 1 0.5 0

execute unless predicate player_manager:is_sneaking run function skill:job_skill/ninja/suiton/apply
execute if predicate player_manager:is_sneaking as @a[distance=..15] at @s run function skill:job_skill/ninja/suiton/apply
