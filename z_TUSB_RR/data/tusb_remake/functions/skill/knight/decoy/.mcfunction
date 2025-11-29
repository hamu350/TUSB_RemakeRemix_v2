#> tusb_remake:skill/knight/decoy/
# デコイを発動させる(103X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute if score @s ActivatedSkill matches 1030 as @e[distance=..15,type=#tusb_remake:mob,tag=Enemy] run function tusb_remake:skill/knight/decoy/tp
execute if score @s ActivatedSkill matches 1031..1039 as @e[distance=..25,type=#tusb_remake:mob,tag=Enemy] run function tusb_remake:skill/knight/decoy/tp

playsound minecraft:entity.enderman.teleport master @a[distance=..32] ~ ~ ~ 2 0.7 0
particle portal ~ ~1 ~ 0 0.5 0 1 200 force
