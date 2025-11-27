#> tusb_remake:skill/black_mage/return/
# ルーラを発動させる(507X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 頭上の障害物の数を取得
execute if entity @s[nbt={Dimension:"minecraft:overworld"}] store result storage tusb_remake: return_obstacle int 1 if blocks ~ ~ ~ ~ 319 ~ ~ ~ ~ masked
execute unless entity @s[nbt={Dimension:"minecraft:overworld"}] store result storage tusb_remake: return_obstacle int 1 if blocks ~ ~ ~ ~ 255 ~ ~ ~ ~ masked
### 障害物があったら
execute unless data storage tusb_remake: {return_obstacle:0} run tellraw @a {"text":"* 頭上が遮られていたため、発動できなかった！"}
### 障害物がなかったら
execute if data storage tusb_remake: {return_obstacle:0} run function tusb_remake:skill/black_mage/return/apply
