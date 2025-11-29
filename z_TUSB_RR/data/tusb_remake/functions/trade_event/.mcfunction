#> tusb_remake:trade_event/
# 職業変更の処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 職業変更
execute store result storage tusb_remake: _ int 1 run clear @s minecraft:paper{JobChange:true} 0
execute unless data storage tusb_remake: {_:0} at @s run function tusb_remake:job/change/
execute unless data storage tusb_remake: {_:0} at @s run clear @s white_wool 16

### 釣りチケットを入手した時
execute store result storage tusb_remake: _ int 1 run clear @s minecraft:paper{FishingGame:true} 0
execute unless data storage tusb_remake: {_:0} at @s run function tusb_remake:trade_event/fishing

scoreboard players reset @s TradedVillager
