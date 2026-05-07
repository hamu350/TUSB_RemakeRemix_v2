#> skill:trigger/projectile/check_hit
# 飛んでるのが当たった敵
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute if entity @s[nbt={HurtTime:10s}] run function skill:trigger/projectile/hit
tag @s remove NearProjectile
