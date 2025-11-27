#> tusb_remake:skill/black_mage/ice_storm/apply/
### 雪玉をアイスストームにする
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute as @e[distance=0,type=snowball,limit=1] run function tusb_remake:skill/black_mage/ice_storm/apply/snowball

### アイスストームの演出有効化
function tusb_remake:skill/black_mage/ice_storm/schedule/

### 飛んでるやつの判定有効化
function tusb_remake:skill/projectile/
