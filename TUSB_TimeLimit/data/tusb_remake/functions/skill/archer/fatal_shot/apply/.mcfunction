#> tusb_remake:skill/archer/fatal_shot/apply/
### 矢をフェイタルショットにする
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# execute at @s run playsound item.flintandsteel.use master @a[distance=..16] ~ ~ ~ 1 1.2 0
# タグ判別追加
execute as @e[distance=0,tag=!FatalShot,type=#tusb_remake:arrow,limit=1] run function tusb_remake:skill/archer/fatal_shot/apply/arrow

### フェイタルショットの演出有効化
function tusb_remake:skill/archer/fatal_shot/schedule/

### 飛んでるやつの判定有効化
function tusb_remake:skill/projectile/
