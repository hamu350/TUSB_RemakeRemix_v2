#> tusb_remake:skill/projectile/check/chaser/remove/notify
# エンチェイス後の処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage tusb_remake: _ set from storage tusb_remake: chaser_owner
execute store result storage tusb_remake: _ byte 1 run data modify storage tusb_remake: _ set from entity @s UUID

execute if data storage tusb_remake: {_:false} at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 1 2 0
