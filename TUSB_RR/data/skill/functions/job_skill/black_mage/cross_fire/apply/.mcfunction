#> skill:job_skill/black_mage/cross_fire/apply/
### 雪玉をクロスファイアーにする
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute as @e[distance=0,type=snowball,limit=1] run function skill:job_skill/black_mage/cross_fire/apply/snowball

### クロスファイアーの演出有効化
function skill:job_skill/black_mage/cross_fire/schedule/

### 飛んでるやつの判定有効化
function skill:trigger/projectile/
