#> tusb_remake:portal/warp/
## ワープをチェックして実行
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### オーバーワールドでのチェック
execute if entity @s[nbt={Dimension:"minecraft:overworld"}] run function tusb_remake:portal/warp/overworld/
### ネザーでのチェック
execute if entity @s[nbt={Dimension:"minecraft:the_nether"}] run function tusb_remake:portal/warp/the_nether/

### 移動していたら実行地点より遠くにいるはず
title @s[distance=5..] actionbar "わあああああああぷ！！"

tag @s remove PortalCheck
