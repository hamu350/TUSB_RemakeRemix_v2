#> tusb_remake:skill/white_mage/tingle/
# キアリクを発動させる(400X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound block.anvil.land master @a[distance=..16] ~ ~ ~ 1 2 0
particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.1 30 force

execute as @a[distance=..15] at @s run function tusb_remake:skill/knight/will_of_knight/apply
