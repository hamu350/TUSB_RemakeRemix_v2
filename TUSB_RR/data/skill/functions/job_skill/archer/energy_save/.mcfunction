#> skill:job_skill/archer/energy_save/
# エナジーセーブ付与(306X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:entity.enderman.teleport master @a[distance=..16] ~ ~ ~ 1 1.4 0

scoreboard players operation _ ActivatedSkill = @s ActivatedSkill
execute unless predicate player_manager:is_sneaking run function skill:job_skill/archer/energy_save/apply
execute if predicate player_manager:is_sneaking as @a[distance=..15] at @s run function skill:job_skill/archer/energy_save/apply
