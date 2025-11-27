#> tusb_remake:skill/black_mage/candle/schedule/place
# キャンドルを召喚
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

particle soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0 2 force
execute if score @s CandleTimer = _ TUSB run function tusb_remake:skill/black_mage/candle/place
