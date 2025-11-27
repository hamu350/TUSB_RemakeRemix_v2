#> tusb_remake:skill/summoner/summon_petit_black/black/hit
# ぷちブラックが当たった処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### マルチヒット防止のエフェクト
effect give @s minecraft:saturation 10 127 true

### ダメージを与える
function score_damage:api/attack
