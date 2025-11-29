#> tusb_remake:skill/ninja/suriken/count/shift
### 最近投げた手裏剣の履歴を更新
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 手裏剣の履歴をずらす
function #oh_my_dat:please
data remove storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.SurikenCount[0]
data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.SurikenCount append value {f:0}
### 最近なげた手裏剣がなくなったら履歴を見る対象から外す
execute store result storage tusb_remake: _ int 1 if data storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.SurikenCount[{f:1}]

execute if data storage tusb_remake: {_:0} run tag @s remove SurikenCount
