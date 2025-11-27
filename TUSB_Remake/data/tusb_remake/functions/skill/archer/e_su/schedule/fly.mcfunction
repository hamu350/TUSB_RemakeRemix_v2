#> tusb_remake:skill/white_mage/holy/schedule/fly
### ホーリーが飛んでいる演出
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound entity.experience_orb.pickup master @a[distance=..32] ~ ~ ~ 0.3 2 0.05
particle end_rod ~ ~0.2 ~ 2 2 2 0.1 50 force
execute as @a[distance=..32] at @e[tag=e_su] run function tusb_remake:player/clear_bad_effect
execute as @e[distance=..10,type=#tusb_remake:mob,tag=Enemy,nbt=!{ActiveEffects:[{Id:23}]}] at @s run function tusb_remake:skill/archer/e_su/schedule/hit
scoreboard players add @a[distance=..32] HealCount 4
data modify storage tusb_remake: _ set value true
