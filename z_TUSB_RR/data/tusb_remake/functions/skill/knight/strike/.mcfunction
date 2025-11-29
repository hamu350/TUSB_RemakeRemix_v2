#> tusb_remake:skill/knight/strike/
# ストライを発動させる(102X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound entity.blaze.death master @a[distance=..16] ~ ~ ~ 1 2 0

scoreboard players operation _ ActivatedSkill = @s ActivatedSkill
execute unless predicate tusb_remake:is_sneaking run function tusb_remake:skill/knight/strike/apply
execute if predicate tusb_remake:is_sneaking as @a[distance=..15] at @s run function tusb_remake:skill/knight/strike/apply
