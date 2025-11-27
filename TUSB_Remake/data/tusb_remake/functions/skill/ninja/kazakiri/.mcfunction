#> tusb_remake:skill/ninja/kazakiri/
# 風切を発動させる(207X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:entity.ender_dragon.flap master @a[distance=..16] ~ ~ ~ 1 0.5 0
particle minecraft:instant_effect ~ ~1 ~ 0.5 0.5 0.5 0.1 30 force

execute if score @s ActivatedSkill matches 2070 run scoreboard players set @s Kazakiri 5
execute if score @s ActivatedSkill matches 2071..2079 run scoreboard players set @s Kazakiri 10
