#> skill:job_skill/knight/phalanx/
# ファランクスを発動させる(100X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:block.anvil.use master @a[distance=..16] ~ ~ ~ 1 1.4 0

scoreboard players operation _ ActivatedSkill = @s ActivatedSkill
execute unless predicate player_manager:is_sneaking run function skill:job_skill/knight/phalanx/apply
execute if predicate player_manager:is_sneaking run function skill:job_skill/knight/phalanx/sneaking