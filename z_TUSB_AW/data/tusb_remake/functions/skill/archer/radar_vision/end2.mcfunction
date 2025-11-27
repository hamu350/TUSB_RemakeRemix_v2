#> tusb_remake:skill/archer/radar_vision/end2
# レーダーヴィジョン発動(305X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### ライブラリぱわーーーーーーーー！！！！！！
function #oh_my_dat:please
data modify storage anywhere: at set from storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.RadarVision
function #anywhere:tp

### 終了処理
gamemode survival @s
effect give @s minecraft:resistance 1 4 true
effect clear @s minecraft:water_breathing
effect clear @s minecraft:night_vision

tag @s remove RadarVision
