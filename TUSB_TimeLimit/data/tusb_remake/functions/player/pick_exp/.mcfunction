#> tusb_remake:player/pick_exp/
# 経験値取得処理
### Copyright © 2022 フレイシェル
### This software is released under the MIT License, see LICENSE.

### ネザースターの所持数を取得
execute store result score @s ItemCount run clear @s minecraft:nether_star

function tusb_remake:player/pick_exp/default/get