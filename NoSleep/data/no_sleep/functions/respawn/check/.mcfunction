#> no_sleep:respawn/check/
# ベッドがなければ初期スポに飛ばす
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## プレイヤーの保存されたスポーン地点にベッドがなければ、初期スポーン地点に飛ばすタグをつける
function #oh_my_dat:please

## 何を使って設定したスポーン地点か(ベッドorリスポーンアンカー)
data modify storage no_sleep: type set from storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].NoSleep.type

### もしベッドがなければTeleportWorldSpawnタグがついて帰ってくるよ
data modify storage anywhere: at set from storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].NoSleep.at
execute if data storage no_sleep: {type:"bed"} run data modify storage anywhere: function set value "no_sleep:respawn/check/bed"
execute if data storage no_sleep: {type:"respawn_anchor"} run data modify storage anywhere: function set value "no_sleep:respawn/check/respawn_anchor"
execute if data storage no_sleep: {type:"none"} run data modify storage anywhere: function set value "no_sleep:respawn/check/none"
function #anywhere:run
