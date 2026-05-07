#> skill:trigger/projectile/
# 飛んでるやーつ
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage tusb_remake: projectile_loop set value false

### ヒットした対象に対して処理
execute as @e[tag=NearProjectile] at @s run function skill:trigger/projectile/check_hit

### Projectileのスケジュールで実行
execute as @e[tag=Projectile] at @s run function skill:trigger/projectile/check/

execute if data storage tusb_remake: {projectile_loop:true} in minecraft:overworld run schedule function skill:trigger/projectile/ 1t
