#> tusb_remake:skill/ninja/mokuso/
# 黙想を発動させる(204X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:entity.guardian.attack master @a[distance=..16] ~ ~-100 ~ 0 2 0.5
particle minecraft:damage_indicator ~ ~1 ~ 0.5 0.5 0.5 0.1 30 force

tag @s add Mokuso
scoreboard players set @s WalkOneCm 0
scoreboard players set @s CrouchOneCm 0
scoreboard players set @s SprintOneCm 0

execute if score @s ActivatedSkill matches 2040 run effect give @s minecraft:regeneration 15 1
execute if score @s ActivatedSkill matches 2041..2049 run effect give @s minecraft:regeneration 15 2
