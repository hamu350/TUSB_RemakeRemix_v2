#> tusb_remake:event/
# イベント処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### イベントタイマーが０以下だったらタイマー更新
execute if score #EventTimer Global matches ..0 as @r run function tusb_remake:event/roll

scoreboard players remove #EventTimer Global 1

### イベントタイマーが０だったらイベント発生
execute if score #EventTimer Global matches 0 run function tusb_remake:event/cause
