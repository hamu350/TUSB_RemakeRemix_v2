#> tusb_remake:skill/black_mage/return/schedule/check
# ルーラ待機(507X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 残り時間を求める
scoreboard players operation _ TUSB = @s ReturnTimer
scoreboard players operation _ TUSB -= _ ReturnTimer

title @s actionbar [{"text":"スニークするとルーラをキャンセルします。","color":"dark_aqua","bold":true}," =",{"score":{"name":"_","objective":"TUSB"}},"="]
### スニークしていたらキャンセル
execute if predicate tusb_remake:is_sneaking run scoreboard players set @s ReturnTimer 0
### 死んでいたらキャンセル
execute if score @s HP matches ..0 run scoreboard players set @s ReturnTimer 0
