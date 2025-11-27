#> tusb_remake:player/death/in_nether_trial
# プレイヤーがネザーアスレチックで死んだとき
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### レイズの効果をかける
tag @s add Raise
### ネザーでかかったことにする
function #oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.RaisePoint set value {Pos:[-274.5d,23.5d,879.5d],Rotation:[-90f,0f],Dimension:"minecraft:the_nether"}

scoreboard players set @s RaisedArea -90
scoreboard players set @s Hunger 21
gamemode spectator @s
### ネザーアスレチックのエリトラ持ってたら消す
clear @s[nbt={Inventory:[{tag:{TrialItem:true}}]}]
