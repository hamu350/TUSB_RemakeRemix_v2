#> tusb_remake:skill/archer/chain_arrow/apply/
### 矢をチェインアローにする
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.
execute at @s run playsound block.water.ambient master @a[distance=..32] ~ ~ ~ 1 1.2 0

execute as @e[distance=0,type=#tusb_remake:arrow,limit=1] run function tusb_remake:skill/archer/madan/apply/arrow

### チェインアローの演出有効化
function tusb_remake:skill/archer/madan/schedule/

### 飛んでるやつの判定有効化
function tusb_remake:skill/projectile/
