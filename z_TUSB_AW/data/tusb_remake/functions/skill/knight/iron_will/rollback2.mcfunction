#> tusb_remake:skill/knight/iron_will/rollback2
#
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 座標を設定
data modify entity @s Pos set from storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.IronWillPos
### 向きを設定
execute positioned as @s run tp @s ~ ~ ~ ~ ~
### 慣性を削除
tp @a[tag=IronWillRollbackTarget,limit=1] 0.0 0.0 0.0
### プレイヤー移動
tp @a[tag=IronWillRollbackTarget,limit=1] @s

kill @s
