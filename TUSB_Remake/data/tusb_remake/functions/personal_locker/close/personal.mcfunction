#> tusb_remake:personal_locker/close/personal
# 
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 個人ストレージから引っ張り出す
function #oh_my_dat:please
### 個人エンダーチェストのスロットを読み込み
execute store result score _ TUSB run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TUSB.PersonalEnderChestSlot
### 個人エンダーチェストに内容を保存
execute if score _ TUSB matches 0 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TUSB.PersonalEnderChest[0].Items set from entity @s EnderItems
execute if score _ TUSB matches 1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TUSB.PersonalEnderChest[1].Items set from entity @s EnderItems
execute if score _ TUSB matches 2 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TUSB.PersonalEnderChest[2].Items set from entity @s EnderItems
execute if score _ TUSB matches 3 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TUSB.PersonalEnderChest[3].Items set from entity @s EnderItems
execute if score _ TUSB matches 4 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TUSB.PersonalEnderChest[4].Items set from entity @s EnderItems
execute if score _ TUSB matches 5 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TUSB.PersonalEnderChest[5].Items set from entity @s EnderItems
execute if score _ TUSB matches 6 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TUSB.PersonalEnderChest[6].Items set from entity @s EnderItems
execute if score _ TUSB matches 7 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TUSB.PersonalEnderChest[7].Items set from entity @s EnderItems
execute if score _ TUSB matches 8 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TUSB.PersonalEnderChest[8].Items set from entity @s EnderItems
