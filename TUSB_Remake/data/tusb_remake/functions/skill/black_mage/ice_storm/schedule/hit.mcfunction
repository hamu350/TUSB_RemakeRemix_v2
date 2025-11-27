#> tusb_remake:skill/black_mage/ice_storm/schedule/hit
# アイスストームが当たった時
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:entity.item.break master @a[distance=..32] ~ ~ ~ 2 1.6 0.1
particle minecraft:block minecraft:packed_ice ~ ~1 ~ 0.1 0.5 0.1 0.1 30 force

### マルチヒット防止のエフェクト
effect give @s minecraft:saturation 10 127 true

### アイスストームは移動速度を低下させる
effect give @s minecraft:slowness 10 1 false

### ダメージを与える
function score_damage:api/attack
