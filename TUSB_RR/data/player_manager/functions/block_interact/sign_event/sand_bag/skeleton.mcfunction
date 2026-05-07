#> tusb_remake:sign_event/sand_bag/skeleton
# スキル設定場のサンドバッグ看板
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

summon minecraft:bat -2727 89 -417 {Passengers:[{id:"minecraft:wither_skeleton",DeathLootTable:"minecraft:empty",Attributes:[{Name:"minecraft:generic.attack_damage",Base:0d}],HandItems:[{id:"minecraft:stick",Count:65b}],ArmorItems:[{},{},{},{id:"minecraft:oxeye_daisy",Count:65b}],Tags:[SandBag]}],Tags:[SandBag]}
particle minecraft:block minecraft:coal_block -2727 89 -417 1 3 1 0 200
playsound minecraft:entity.generic.swim master @a[distance=..10]
playsound minecraft:entity.zombie.attack_wooden_door master @a[distance=..10] ~ ~ ~ 0.4 1
