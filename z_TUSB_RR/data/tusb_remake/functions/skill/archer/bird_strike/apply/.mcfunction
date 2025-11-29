#> tusb_remake:skill/archer/bird_strike/apply/
### 矢をバードストライクにする
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# タグ判別追加
execute as @e[distance=0,tag=!BirdStrike,type=#tusb_remake:arrow,limit=1] run function tusb_remake:skill/archer/bird_strike/apply/arrow

### バードストライクの演出有効化
function tusb_remake:skill/archer/bird_strike/schedule/

### 飛んでるやつの判定有効化
function tusb_remake:skill/projectile/
