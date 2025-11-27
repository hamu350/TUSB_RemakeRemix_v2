#> tusb_remake:player/use_firework/consume
# 花火を使った時
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 耐久力を1/6消費する
scoreboard players add _ TUSB 72
execute if score _ TUSB matches 432.. run scoreboard players set _ TUSB 431

### 新しい耐久力を設定
data modify storage player_item_tuner: condition set value {if:{Slot:102b}}
data modify storage player_item_tuner: result set value {merge:{tag:{Damage:432s}}}
execute store result storage player_item_tuner: result.merge.tag.Damage short 1 run scoreboard players get _ TUSB

### 耐久力更新
function #player_item_tuner:merge/inventory

### 耐久力消費メッセージ
title @s actionbar {"color":"red","bold":true,"text":"エリトラに負荷がかかっています！"}
