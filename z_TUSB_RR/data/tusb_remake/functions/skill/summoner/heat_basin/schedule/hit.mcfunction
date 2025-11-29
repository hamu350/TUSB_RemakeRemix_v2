#> tusb_remake:skill/summoner/heat_basin/schedule/hit
# あつあつタライが当たった時
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### マルチヒット防止のエフェクト
effect give @s minecraft:saturation 10 127 true
### 燃やす
data modify entity @s Fire set value 40s

### ダメージを与える
function score_damage:api/attack

data modify storage tusb_remake: hit set value true
