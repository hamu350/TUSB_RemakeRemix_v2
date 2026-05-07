#> skill:job_skill/white_mage/tingle/
# キアリクを発動させる(400X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound entity.rabbit.hurt master @a[distance=..16] ~ ~ ~ 1 2 0

execute unless predicate player_manager:is_sneaking run function skill:job_skill/white_mage/tingle/apply
execute if predicate player_manager:is_sneaking as @a[distance=..15] at @s run function skill:job_skill/white_mage/tingle/apply
