#> tusb_remake:skill/knight/phalanx/
# ファランクスを発動させる(100X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:block.anvil.use master @a[distance=..16] ~ ~ ~ 1 1.4 0

scoreboard players operation _ ActivatedSkill = @s ActivatedSkill
execute unless predicate tusb_remake:is_sneaking run function tusb_remake:skill/knight/phalanx/apply
execute if predicate tusb_remake:is_sneaking run function tusb_remake:skill/knight/phalanx/sneaking