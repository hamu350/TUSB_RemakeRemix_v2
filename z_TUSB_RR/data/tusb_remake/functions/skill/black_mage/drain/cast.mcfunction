#> tusb_remake:skill/black_mage/drain/cast
# ドレイン発動
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage tusb_remake: drain_result set value false
execute as @e[distance=..10,type=#tusb_remake:living,limit=1] run function tusb_remake:skill/black_mage/drain/apply

### ドレインできなかったらMPを返す
execute if data storage tusb_remake: {drain_result:false} run scoreboard players operation @s MP += @s MPConsumption
### ドレインできていたら回復
execute if data storage tusb_remake: {drain_result:true} run function tusb_remake:skill/black_mage/drain/player
