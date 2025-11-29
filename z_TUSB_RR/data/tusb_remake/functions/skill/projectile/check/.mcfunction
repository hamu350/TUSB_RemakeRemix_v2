#> tusb_remake:skill/projectile/check/
# 近くのモブをチェック
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# 接地矢無効化
execute as @s[nbt={inGround:true}] run function tusb_remake:skill/projectile/check/ground

execute unless entity @s[tag=Chaser] run function tusb_remake:skill/projectile/check/normal
execute if entity @s[tag=Chaser] run function tusb_remake:skill/projectile/check/chaser/

data modify storage tusb_remake: projectile_loop set value true
