#> no_sleep:use/respawn_anchor
# スポーン地点を更新したかのチェック
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 使ったのはリスポーンアンカーだよ
data modify storage no_sleep: type set value "respawn_anchor"
data modify storage no_sleep: force set value false

### 同じ座標で別ディメンションへの変化も検知するために、oh_my_dat使うしかない
function #oh_my_dat:please

### スポーン地点
data modify storage no_sleep: at set value {Pos:[0d,0d,0d],Dimension:"minecraft:overworld"}
execute store result storage no_sleep: at.Pos[0] double 1 run data get entity @s SpawnX
execute store result storage no_sleep: at.Pos[1] double 1 run data get entity @s SpawnY
execute store result storage no_sleep: at.Pos[2] double 1 run data get entity @s SpawnZ
data modify storage no_sleep: at.Dimension set from entity @s SpawnDimension

### もしもスポーン地点がセーブされていなかったら現在のスポーン地点を設定しておく
execute unless data storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].NoSleep.at run data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].NoSleep.at set from storage no_sleep: at

### スポーン地点が更新されているかチェック
execute store result storage no_sleep: _ byte 1 run data modify storage no_sleep: at set from storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].NoSleep.at
### 更新されていたら更新されている場合の処理
execute if data storage no_sleep: {_:true} run function no_sleep:use/common

### トリガーを解除
advancement revoke @s only no_sleep:use/respawn_anchor
