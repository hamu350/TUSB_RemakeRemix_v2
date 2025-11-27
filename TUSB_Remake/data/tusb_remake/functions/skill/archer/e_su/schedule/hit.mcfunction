#> tusb_remake:skill/white_mage/holy/schedule/hit
# ホーリーが当たった時
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### マルチヒット防止のエフェクト
effect give @s minecraft:saturation 10 127 true

execute at @s[type=#tusb_remake:mob,distance=..32] run playsound minecraft:block.beacon.ambient master @a[distance=..32] ~ ~ ~ 1.0 2 0.0
execute at @s[type=#tusb_remake:mob,distance=..32] run particle happy_villager ~ ~ ~ 1 1 1 0.25 100 force
data modify storage score_damage: Argument set value {Damage:150.00,DamageType:"None"}
execute as @s[type=#tusb_remake:mob,distance=..32] run function score_damage:api/attack

