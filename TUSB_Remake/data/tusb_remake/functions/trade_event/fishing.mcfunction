#> tusb_remake:trade_event/fishing
# 釣りチケットの時
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 釣りのためのエフェクトを３分かける
effect give @s minecraft:unluck 180 20
### 何か釣れるよメッセージ
tellraw @s {"text":"今なら変わったものが釣れそうだ！","color":"green"}

clear @s minecraft:paper{FishingGame:true}
