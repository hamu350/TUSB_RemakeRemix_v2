#> tusb_remake:area/portal/nether/dungeon_up/close
# 迷い断ち切る地へのワープ閉じる
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# クリスタルのmin.min -1948 123 -55
# 看板 -1937 120 -34 rot12

data modify storage tusb_remake: portal_name set value "煉獄 迷い断ち切る地"
data remove storage tusb_remake: portal.table_mountain.waterway_village
execute positioned -1948 123 -55 run function tusb_remake:area/portal/close

### チャンク読み込み
# execute positioned -2380 75 -131 run function tusb_remake:area/portal/set_command
setblock -1937 120 -34 minecraft:air
setblock -1937 120 -34 minecraft:oak_sign[rotation=12]{Text1:'{"text":""}',Text2:'{"bold":true,"color":"dark_aqua","text":"ワープクリスタル"}',Text3:'{"bold":true,"color":"dark_aqua","text":"右クリックで開通"}'}
