#> skill:trigger/projectile/check/
# 近くのモブをチェック
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# 接地矢無効化
execute as @s[nbt={inGround:true}] run function skill:trigger/projectile/check/ground

execute unless entity @s[tag=Chaser] run function skill:trigger/projectile/check/normal
execute if entity @s[tag=Chaser] run function skill:trigger/projectile/check/chaser/

data modify storage tusb_remake: projectile_loop set value true
