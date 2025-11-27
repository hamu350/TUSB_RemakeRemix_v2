#> tusb_remake:gimmic/pin_traders/trigger
# テーブルマウンテンの商人を貼り付ける
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute positioned 44.2 114.5 -2225.0 rotated 90 0 as @e[distance=..100,name="番台",nbt={ArmorItems:[{id:"minecraft:pig_spawn_egg"}]}] run function tusb_remake:gimmic/pin_traders/pin

execute positioned -3.5 116.0 -2217.5 rotated 180 0 as @e[distance=..100,name="§3クリーン・オフィサー",nbt={ArmorItems:[{id:"minecraft:string"}]}] run function tusb_remake:gimmic/pin_traders/pin

execute positioned -0.5 116.0 -2217.5 rotated 180 0 as @e[distance=..100,name="ハピネス・オフィサー",nbt={ArmorItems:[{id:"minecraft:tipped_arrow"}]}] run function tusb_remake:gimmic/pin_traders/pin
