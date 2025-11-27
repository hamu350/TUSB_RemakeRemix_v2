#> tusb_remake:player/force_vanishing
## プレイヤーのインベントリに入れたくないアイテムを削除する
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### ここに消すアイテムを追加していく
clear @s minecraft:saddle{ForceVanishing:true}

advancement revoke @s only tusb_remake:player/force_vanishing
