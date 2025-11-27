#> tusb_remake:skill/black_mage/ice_storm/schedule/fly
### アイスストームが飛んでいる演出
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# 変更点: ダメージを微増

playsound block.anvil.land master @a[distance=..32] ~ ~100 ~ 0.05 2 0.05
particle minecraft:block minecraft:packed_ice ~ ~ ~ 0.5 0.5 0.5 0.1 10 force @a[distance=..64]

### アイスストームは水を凍らせる
fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:frosted_ice replace minecraft:water[level=0]

### リメイク：威力を少しアップ
### レベル１：15ダメージ レベル２：30ダメージ、レベル３：45ダメージ
execute if entity @s[tag=IceStorm1] run data modify storage score_damage: Argument set value {Damage:15.00,DamageType:"Projectile"}
execute if entity @s[tag=IceStorm2] run data modify storage score_damage: Argument set value {Damage:30.00,DamageType:"Projectile"}
execute if entity @s[tag=IceStorm3] run data modify storage score_damage: Argument set value {Damage:45.00,DamageType:"Projectile"}

execute as @e[distance=..8,type=#tusb_remake:mob,type=!#tusb_remake:resist_ice,tag=Enemy,nbt=!{ActiveEffects:[{Id:23}]}] at @s run function tusb_remake:skill/black_mage/ice_storm/schedule/hit

data modify storage tusb_remake: _ set value true
