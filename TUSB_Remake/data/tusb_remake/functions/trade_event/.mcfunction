#> tusb_remake:trade_event/
# 職業変更の処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 既に職業についていたら、初回無料の申請書を取り上げる
clear @s[scores={Job=1..}] minecraft:paper{display:{Name:'"§r§lジョブ変更申請書"'},"初回":true}

### 職業変更
execute store result storage tusb_remake: _ int 1 run clear @s minecraft:paper{JobChange:true} 0
execute unless data storage tusb_remake: {_:0} at @s run function tusb_remake:job/change/

### 釣りチケットを入手した時
execute store result storage tusb_remake: _ int 1 run clear @s minecraft:paper{FishingGame:true} 0
execute unless data storage tusb_remake: {_:0} at @s run function tusb_remake:trade_event/fishing

scoreboard players reset @s TradedVillager
