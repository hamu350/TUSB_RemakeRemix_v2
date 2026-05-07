#> tusb_remake:button_event/super_craft/result/ok
# 結果が変化していたら
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute positioned -2739 90 -362 run playsound minecraft:block.anvil.use master @a[distance=..12] ~ ~ ~ 1 1.587
particle happy_villager -2739 92 -362 1 1 1 0 50 force
clone -2721 70 -355 -2721 70 -355 -2739 90 -362
