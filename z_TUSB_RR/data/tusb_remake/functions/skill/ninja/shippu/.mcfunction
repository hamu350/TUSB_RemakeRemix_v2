#> tusb_remake:skill/ninja/shippu/
# 疾風を発動させる(201X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:entity.wither.shoot master @a[distance=..16] ~ ~ ~ 1 1.6 0
particle minecraft:cloud ~ ~1 ~ 0.5 0.5 0.5 0.1 60 force

### リメイク：攻撃力上昇効果を少しアップ
execute if score @s ActivatedSkill matches 2010 run effect give @s minecraft:speed 60 1
execute if score @s ActivatedSkill matches 2011 run effect give @s minecraft:speed 60 3
execute if score @s ActivatedSkill matches 2012..2019 run effect give @s minecraft:speed 60 5
