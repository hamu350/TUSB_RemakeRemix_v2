#> tusb_remake:skill/white_mage/holy/schedule/fly
### ホーリーが飛んでいる演出
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# 変更点: 範囲を8mから6mに

playsound entity.experience_orb.pickup master @a[distance=..32] ~ ~ ~ 0.3 2 0.05
particle end_rod ~ ~ ~ 1 1 1 0.1 3 force

execute as @e[distance=..6,type=#tusb_remake:mob,tag=Enemy,nbt=!{ActiveEffects:[{Id:23}]}] at @s run function tusb_remake:skill/white_mage/holy/schedule/hit

data modify storage tusb_remake: _ set value true
