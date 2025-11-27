#> tusb_remake:sign_event/sand_bag/zombie
# スキル設定場のサンドバッグ看板
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

summon minecraft:zombie -2727 89 -417 {DeathLootTable:"minecraft:empty",Attributes:[{Name:"minecraft:generic.attack_damage",Base:0d}],ArmorItems:[{},{},{},{id:"minecraft:poppy"}],Tags:[SandBag]}
particle minecraft:block minecraft:warped_planks -2727 89 -417 1 3 1 0 200
playsound minecraft:entity.generic.swim master @a[distance=..10]
playsound minecraft:entity.zombie.attack_wooden_door master @a[distance=..10] ~ ~ ~ 0.4 1
