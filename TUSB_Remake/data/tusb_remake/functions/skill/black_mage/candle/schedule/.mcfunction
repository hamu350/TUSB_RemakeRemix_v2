#> tusb_remake:skill/black_mage/candle/schedule/
### キャンドルの効果判定
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute store result score _ TUSB run time query gametime
execute as @a[tag=Candle] if score @s CandleTimer >= _ TUSB at @s anchored eyes positioned ^ ^ ^ anchored feet run function tusb_remake:skill/black_mage/candle/schedule/check
execute as @a[tag=Candle] if score @s CandleTimer <= _ TUSB run tag @s remove Candle

execute if entity @a[tag=Candle] in minecraft:overworld run schedule function tusb_remake:skill/black_mage/candle/schedule/ 1t
