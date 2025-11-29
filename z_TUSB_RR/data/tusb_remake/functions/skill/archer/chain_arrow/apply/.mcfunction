#> tusb_remake:skill/archer/chain_arrow/apply/
### 矢をチェインアローにする
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute at @s run playsound entity.mooshroom.shear master @a[distance=..32] ~ ~ ~ 0.2 1.2 0
execute at @s run particle explosion ~ ~-0.3 ~ 0 0 0 0 1 force
# タグ判別追加
execute as @e[distance=0,tag=!ChainArrow,type=#tusb_remake:arrow,limit=1] run function tusb_remake:skill/archer/chain_arrow/apply/arrow

### チェインアローの演出有効化
# function tusb_remake:skill/archer/stakes_fire/schedule/

### 飛んでるやつの判定有効化
function tusb_remake:skill/projectile/
