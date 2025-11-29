#> tusb_remake:skill/black_mage/candle/schedule/search
### キャンドルの効果判定
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 距離のカウントを減らす
execute store result storage tusb_remake: candle_distance int 0.9999999999 run data get storage tusb_remake: candle_distance

### 空気じゃないなら距離を0にする
execute unless block ~ ~ ~ minecraft:air run data modify storage tusb_remake: candle_distance set value 0

### 距離が残っていなかったら設置
execute if data storage tusb_remake: {candle_distance:0} positioned ^ ^ ^-0.25 run function tusb_remake:skill/black_mage/candle/schedule/place

### 距離が残っていたら繰り返し
execute unless data storage tusb_remake: {candle_distance:0} positioned ^ ^ ^0.25 run function tusb_remake:skill/black_mage/candle/schedule/search
