#> tusb_remake:skill/black_mage/grow/
# グロウを召喚
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:block.grass.break master @a[distance=..16] ~ ~ ~ 1 0.5 0
particle minecraft:happy_villager ~ ~0.3 ~ 2 0 2 0 90 force

### リメイク：効果範囲を２ｍずつ拡大
execute positioned ~-2.5 ~-1 ~-2.5 run fill ~ ~ ~ ~5 ~2 ~5 minecraft:wheat[age=7] replace minecraft:wheat
execute positioned ~-2.5 ~-1 ~-2.5 run fill ~ ~ ~ ~5 ~2 ~5 minecraft:carrots[age=7] replace minecraft:carrots
execute positioned ~-2.5 ~-1 ~-2.5 run fill ~ ~ ~ ~5 ~2 ~5 minecraft:potatoes[age=7] replace minecraft:potatoes
execute positioned ~-2.5 ~-1 ~-2.5 run fill ~ ~ ~ ~5 ~2 ~5 minecraft:pumpkin_stem[age=7] replace minecraft:pumpkin_stem
execute positioned ~-2.5 ~-1 ~-2.5 run fill ~ ~ ~ ~5 ~2 ~5 minecraft:melon_stem[age=7] replace minecraft:melon_stem
execute positioned ~-2.5 ~-1 ~-2.5 run fill ~ ~ ~ ~5 ~2 ~5 minecraft:nether_wart[age=3] replace minecraft:nether_wart
execute positioned ~-2.5 ~-1 ~-2.5 run fill ~ ~ ~ ~5 ~2 ~5 minecraft:beetroots[age=3] replace minecraft:beetroots
execute positioned ~-2.5 ~-1 ~-2.5 run fill ~ ~ ~ ~5 ~2 ~5 minecraft:cocoa[age=2,facing=east] replace minecraft:cocoa[facing=east]
execute positioned ~-2.5 ~-1 ~-2.5 run fill ~ ~ ~ ~5 ~2 ~5 minecraft:cocoa[age=2,facing=west] replace minecraft:cocoa[facing=west]
execute positioned ~-2.5 ~-1 ~-2.5 run fill ~ ~ ~ ~5 ~2 ~5 minecraft:cocoa[age=2,facing=north] replace minecraft:cocoa[facing=north]
execute positioned ~-2.5 ~-1 ~-2.5 run fill ~ ~ ~ ~5 ~2 ~5 minecraft:cocoa[age=2,facing=south] replace minecraft:cocoa[facing=south]
