#> tusb_remake:sign_event/sand_bag/creeper
# スキル設定場のサンドバッグ看板
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

summon minecraft:creeper -2727 89 -417 {DeathLootTable:"minecraft:empty",ExplosionRadius:0b,Fuse:30s,Tags:[SandBag]}
particle minecraft:block minecraft:lime_wool -2727 89 -417 1 3 1 0 200
playsound minecraft:entity.generic.swim master @a[distance=..10]
playsound minecraft:entity.zombie.attack_wooden_door master @a[distance=..10] ~ ~ ~ 0.4 1
