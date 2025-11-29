#> tusb_remake:skill/black_mage/return/schedule/clear
# ルーラ待機(507X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 丁度ならリターン
execute if score @s ReturnTimer = _ ReturnTimer run function tusb_remake:skill/black_mage/return/schedule/return
### 丁度じゃなかったらキャンセルしたメッセージ
execute if score @s ReturnTimer < _ ReturnTimer run title @s actionbar {"text":"ルーラをキャンセルしました。","color":"dark_aqua","bold":true}
### いろいろリセット
scoreboard players reset @s ReturnTimer
tag @s remove Return
