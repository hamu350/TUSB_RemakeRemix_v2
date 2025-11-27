#> tusb_remake:athletic/pattern6/change_color
# パターン６
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute unless data storage tusb_remake: pattern6.color run data modify storage tusb_remake: pattern6.color set value 6
### カウントアップ
execute store result storage tusb_remake: pattern6.color int -1 store result storage tusb_remake: pattern6{color:7}.color int -0.15 run data get storage tusb_remake: pattern6.color -1.0000000001

### 共通
execute positioned -469 61 1200 run fill ~ ~ ~ ~19 77 ~ minecraft:air replace #minecraft:terracotta
### 1
execute if data storage tusb_remake: pattern6{color:1} positioned -469 61 1199 run clone ~ ~ ~ ~19 77 ~ ~ ~ ~1 filtered minecraft:red_terracotta
### 2
execute if data storage tusb_remake: pattern6{color:2} positioned -469 61 1199 run clone ~ ~ ~ ~19 77 ~ ~ ~ ~1 filtered minecraft:purple_terracotta
### 3
execute if data storage tusb_remake: pattern6{color:3} positioned -469 61 1199 run clone ~ ~ ~ ~19 77 ~ ~ ~ ~1 filtered minecraft:blue_terracotta
### 4
execute if data storage tusb_remake: pattern6{color:4} positioned -469 61 1199 run clone ~ ~ ~ ~19 77 ~ ~ ~ ~1 filtered minecraft:lime_terracotta
### 5
execute if data storage tusb_remake: pattern6{color:5} positioned -469 61 1199 run clone ~ ~ ~ ~19 77 ~ ~ ~ ~1 filtered minecraft:yellow_terracotta
### 6
execute if data storage tusb_remake: pattern6{color:6} positioned -469 61 1199 run clone ~ ~ ~ ~19 77 ~ ~ ~ ~1 filtered minecraft:orange_terracotta
