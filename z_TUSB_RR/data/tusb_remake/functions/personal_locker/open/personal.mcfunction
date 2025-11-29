#> tusb_remake:personal_locker/open/personal
# 
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 個人ストレージを呼び出し
function #oh_my_dat:please

### もしも初期化されていなかったら初期化する
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TUSB.PersonalEnderChestSlot run function tusb_remake:personal_locker/open/init

### 通常のスロットは０
scoreboard players set _ TUSB 0
### もしも制圧済みのポータルの上だったら、個人ロッカーを有効化
execute if block ~ ~-1 ~ minecraft:end_portal_frame[eye=true] run function tusb_remake:personal_locker/open/activate
### サモンエンチェスや印板で呼び出されたものだったとしても個人ロッカーを有効化
execute align xyz if entity @e[dx=0,tag=PersonalLocker] run function tusb_remake:personal_locker/open/activate

### 個人エンダーチェストのスロットを記録
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TUSB.PersonalEnderChestSlot int 1 run scoreboard players get _ TUSB
### 個人エンダーチェストの内容を読み込み
data modify storage player_item_tuner: result set value {fill:{id:"minecraft:air"}}
execute if score _ TUSB matches 0 run data modify storage player_item_tuner: result.items set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TUSB.PersonalEnderChest[0].Items
execute if score _ TUSB matches 1 run data modify storage player_item_tuner: result.items set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TUSB.PersonalEnderChest[1].Items
execute if score _ TUSB matches 2 run data modify storage player_item_tuner: result.items set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TUSB.PersonalEnderChest[2].Items
execute if score _ TUSB matches 3 run data modify storage player_item_tuner: result.items set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TUSB.PersonalEnderChest[3].Items
execute if score _ TUSB matches 4 run data modify storage player_item_tuner: result.items set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TUSB.PersonalEnderChest[4].Items
execute if score _ TUSB matches 5 run data modify storage player_item_tuner: result.items set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TUSB.PersonalEnderChest[5].Items
execute if score _ TUSB matches 6 run data modify storage player_item_tuner: result.items set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TUSB.PersonalEnderChest[6].Items
execute if score _ TUSB matches 7 run data modify storage player_item_tuner: result.items set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TUSB.PersonalEnderChest[7].Items
execute if score _ TUSB matches 8 run data modify storage player_item_tuner: result.items set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TUSB.PersonalEnderChest[8].Items

# プレイヤーのエンダーチェストにセット
function #player_item_tuner:replace/enderchest
