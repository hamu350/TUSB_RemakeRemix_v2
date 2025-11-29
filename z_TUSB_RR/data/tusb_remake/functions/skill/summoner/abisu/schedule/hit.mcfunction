#> tusb_remake:skill/summoner/gold_basin/schedule/hit
# 金タライが当たった時
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### マルチヒット防止のエフェクト
data modify storage score_damage: Argument set value {Damage:80.00,DamageType:"None"}
effect give @s minecraft:saturation 10 127 true
particle dragon_breath ~ ~4 ~ 0.25 7 0.25 0.0 25 force
playsound item.trident.riptide_1 master @a[distance=..32] ~ ~ ~ 0.1 1 0
particle dragon_breath ~ ~1 ~ 1 2 1 1 20 force
playsound item.totem.use master @a[distance=..32] ~ ~ ~ 0.1 2 0
playsound entity.lightning_bolt.impact master @a[distance=..32] ~ ~ ~ 0.3 0 0
effect give @a[distance=..20] haste 5 2 true
effect give @a[distance=..20] strength 5 11 true
execute as @a[distance=..20] run function tusb_remake:player/clear_bad_effect
### ダメージを与える
function score_damage:api/attack

data modify storage tusb_remake: hit set value true
