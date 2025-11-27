#> tusb_remake:skill/knight/phalanx/apply
# ファランクスをかける
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute if score _ ActivatedSkill matches 1000 run effect give @s minecraft:resistance 30 0
execute if score _ ActivatedSkill matches 1001 run effect give @s minecraft:resistance 45 0
execute if score _ ActivatedSkill matches 1002 run effect give @s minecraft:resistance 45 1
execute if score _ ActivatedSkill matches 1003..1009 run effect give @s minecraft:resistance 45 2

particle crit ~ ~0.5 ~ 0.5 0.5 0.5 0 30 force
