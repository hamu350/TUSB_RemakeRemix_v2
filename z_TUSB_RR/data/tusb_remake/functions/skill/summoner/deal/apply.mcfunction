#> tusb_remake:skill/summoner/deal/apply
# ディール発動
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:entity.wither.hurt master @a[distance=..30] ~ ~ ~ 3 1.4 0
particle minecraft:block minecraft:white_wool ~ ~1 ~ 0.1 0.1 0.1 0.25 100 force @a[distance=..60]

### ダメージを与える
function score_damage:api/attack
