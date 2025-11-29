#> tusb_remake:skill/white_mage/raise/return
# レイズでもどる
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

tag @s remove Raise

### 死んだ場所を取り出す
function #oh_my_dat:please
data modify storage anywhere: at set from storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.RaisePoint
function #anywhere:tp

### 復帰したときにゲームモードを戻す
gamemode adventure @s
