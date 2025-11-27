#> tusb_remake:skill/white_mage/flower_gift/apply/
### 雪玉をフラワーギフトにする
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute as @e[distance=0,type=snowball,limit=1] run function tusb_remake:skill/white_mage/flower_gift/apply/snowball

### フラワーギフトの演出有効化
function tusb_remake:skill/white_mage/flower_gift/schedule/

### 飛んでるやつの判定有効化
function tusb_remake:skill/projectile/
