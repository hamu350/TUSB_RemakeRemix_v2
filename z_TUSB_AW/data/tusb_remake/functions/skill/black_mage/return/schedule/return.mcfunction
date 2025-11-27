#> tusb_remake:skill/black_mage/return/schedule/return
# ルーラ待機(507X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

title @s actionbar {"text":"ルーラ発動！！","color":"dark_aqua","bold":true}

### 交易島に戻す
data modify storage anywhere: at set value {Pos:[-57.5d,15.5d,18.5d],Dimension:"minecraft:overworld"}
data modify storage anywhere: at.Rotation set from entity @s Rotation
function #anywhere:tp
