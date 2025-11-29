#> tusb_remake:skill/projectile/check/normal
# ノーマル
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

tag @e[distance=..5,type=#tusb_remake:mob,tag=Enemy] add NearProjectile
scoreboard players operation @e[distance=..5,type=#tusb_remake:mob,tag=NearProjectile] PotentialSkill = @s ProjectileSkill
