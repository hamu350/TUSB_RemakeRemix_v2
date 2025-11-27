#> tusb_remake:skill/summoner/gold_basin/schedule/hit
# 金タライが当たった時
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### マルチヒット防止のエフェクト
effect give @s minecraft:saturation 10 127 true

### ダメージを与える
function score_damage:api/attack

data modify storage tusb_remake: hit set value true
