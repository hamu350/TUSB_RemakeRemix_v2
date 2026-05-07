#> skill:trigger/projectile/check/normal
# ノーマル
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

tag @e[distance=..5,type=#lib:mob,tag=Enemy] add NearProjectile
scoreboard players operation @e[distance=..5,type=#lib:mob,tag=NearProjectile] PotentialSkill = @s ProjectileSkill
