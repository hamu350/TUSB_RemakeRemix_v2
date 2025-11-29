#> tusb_remake:skill/white_mage/holy/schedule/fly
### ホーリーが飛んでいる演出
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# 変更点: 範囲を8mから6mに
# 戻したった

playsound entity.experience_orb.pickup master @a[distance=..32] ~ ~ ~ 0.3 2 0.05
particle end_rod ~ ~ ~ 3 3 3 0.1 3 force
particle flame ~ ~ ~ 3 3 3 0.1 3 force

execute as @e[distance=..10,type=#tusb_remake:mob,tag=Enemy,nbt=!{ActiveEffects:[{Id:23}]}] at @s run function tusb_remake:skill/white_mage/ignition/schedule/hit
execute as @e[type=player,distance=..20] at @s run effect give @s haste 10 3
execute as @e[type=player,distance=..20] at @s run effect give @s regeneration 10 4
execute as @e[type=player,distance=..20] at @s run effect give @s invisibility 1 6
execute as @e[type=player,distance=..20] at @s run function tusb_remake:player/clear_bad_effect
execute as @e[type=player,distance=..20] at @s run scoreboard players add @s MP 1

data modify storage tusb_remake: _ set value true
