#> skill:job_skill/white_mage/cure/cast
# ケアルを詠唱(420X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound entity.experience_orb.pickup master @a[distance=..16] ~ ~ ~ 1 2 0

execute unless predicate player_manager:is_sneaking run function skill:job_skill/white_mage/cure/apply
execute if predicate player_manager:is_sneaking as @a[distance=..10] at @s run function skill:job_skill/white_mage/cure/apply
