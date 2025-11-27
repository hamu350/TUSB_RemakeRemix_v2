#> tusb_remake:job/save/
# 職業のデータをセーブする
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 現在の職業のレベルと必要経験値をセーブデータとする
data modify storage tusb_remake: SaveData set value {Level:0,ExpToLevel:0}
execute store result storage tusb_remake: SaveData.Level int 1 run scoreboard players get @s Level
execute store result storage tusb_remake: SaveData.ExpToLevel int 1 run scoreboard players get @s ExpToLevel

function #oh_my_dat:please
execute if score @s Job matches 1 run data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.JobData.Knight merge from storage tusb_remake: SaveData
execute if score @s Job matches 2 run data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.JobData.Ninja merge from storage tusb_remake: SaveData
execute if score @s Job matches 3 run data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.JobData.Archer merge from storage tusb_remake: SaveData
execute if score @s Job matches 4 run data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.JobData.WhiteMage merge from storage tusb_remake: SaveData
execute if score @s Job matches 5 run data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.JobData.BlackMage merge from storage tusb_remake: SaveData
execute if score @s Job matches 6 run data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.JobData.Summoner merge from storage tusb_remake: SaveData
