#> no_sleep:save
# スポーン地点を記録する
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 保存しておきたいスポーン地点を構築する
data modify storage no_sleep: at set value {Pos:[0d,0d,0d],Dimension:"minecraft:overworld"}
execute store result storage no_sleep: at.Pos[0] double 1 run data get entity @s SpawnX
execute store result storage no_sleep: at.Pos[1] double 1 run data get entity @s SpawnY
execute store result storage no_sleep: at.Pos[2] double 1 run data get entity @s SpawnZ
data modify storage no_sleep: at.Dimension set from entity @s SpawnDimension
### セーブする
function #oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].NoSleep.at set from storage no_sleep: at
data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].NoSleep.force set from storage no_sleep: force
data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].NoSleep.type set from storage no_sleep: type
