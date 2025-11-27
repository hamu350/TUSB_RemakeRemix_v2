#> tusb_remake:clock/gimmic/nether/angry
# 近くのぶたさんの怒りを自分に向ける
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### ぶたさんの怒る対象を自分にする
data modify entity @e[distance=..16,type=zombified_piglin,limit=1] AngryAt set from entity @s UUID

### ついでにネザーの場合なら煉獄入り口のビーコンを更新する
execute if predicate tusb_remake:area/nether run data modify block -143 89 -357 Primary set value 8
