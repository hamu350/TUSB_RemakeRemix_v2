#> skill:job_skill/black_mage/wind_wall/
# ウィンドウォールを発動させる(508X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:block.portal.trigger master @a[distance=..16] ~ ~100 ~ 0.1 2 0.4

scoreboard players operation _ ActivatedSkill = @s ActivatedSkill
execute unless predicate player_manager:is_sneaking run function skill:job_skill/black_mage/wind_wall/apply
execute if predicate player_manager:is_sneaking as @a[distance=..15] at @s run function skill:job_skill/black_mage/wind_wall/apply
