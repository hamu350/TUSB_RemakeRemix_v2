#> tusb_remake:skill/black_mage/candle/place
# キャンドルを召喚
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

setblock ~ ~ ~ light[level=14] keep
playsound minecraft:block.fire.ambient master @a ~ ~ ~ 0.5 2 0
particle minecraft:soul_fire_flame ~ ~1 ~ 0.2 0.5 0.2 0 20 force
