#> tusb_remake:skill/black_mage/candle/schedule/check
### キャンドルの効果判定
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage tusb_remake: candle_distance set value 40
playsound minecraft:block.fire.ambient master @s ~ ~ ~ 0.5 2 0

execute positioned ^ ^ ^0.25 run function tusb_remake:skill/black_mage/candle/schedule/search
