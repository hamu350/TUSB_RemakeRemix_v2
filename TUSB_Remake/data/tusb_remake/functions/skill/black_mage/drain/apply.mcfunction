#> tusb_remake:skill/black_mage/drain/apply
# ドレインで吸われる側
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:entity.enderman.teleport master @a[distance=..16] ~ ~ ~ 1 0.5 0
particle minecraft:witch ~ ~1 ~ 0.2 0.5 0.2 0.1 30 force

### レベル１
execute if score _ ActivatedSkill matches 5240 run effect give @s minecraft:instant_damage 1 1 false
### レベル２
execute if score _ ActivatedSkill matches 5241..5249 run effect give @s minecraft:instant_damage 1 2 false

data modify storage tusb_remake: drain_result set value true
