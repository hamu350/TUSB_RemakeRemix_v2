#> no_sleep:rollback
# スポーン地点のロールバック
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

tellraw @s {"translate":"リスポーン地点が前の地点に戻されました"}

### 前回のスポーン地点を取り出す
function #oh_my_dat:please
data modify storage anywhere: at set from storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].NoSleep.at
### スポーン地点を戻す
function #anywhere:spawnpoint
