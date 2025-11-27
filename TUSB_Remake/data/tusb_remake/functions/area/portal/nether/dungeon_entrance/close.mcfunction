#> tusb_remake:area/portal/nether/dungeon_entrance/close
# 煉獄 入り口のワープ閉じる
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# クリスタルのmin.min 12 15 -76
# 看板 -101 116 -343 rot14

data modify storage tusb_remake: portal_name set value "煉獄 入り口"
data remove storage tusb_remake: portal.nether.dungeon_entrance
execute positioned 12 15 -76 run function tusb_remake:area/portal/close

### チャンク読み込み
# execute positioned -2380 75 -131 run function tusb_remake:area/portal/set_command
setblock -101 116 -343 minecraft:air
setblock -101 116 -343 minecraft:oak_sign[rotation=4]{Text1:'{"text":""}',Text2:'{"bold":true,"color":"dark_aqua","text":"ワープクリスタル"}',Text3:'{"bold":true,"color":"dark_aqua","text":"右クリックで開通"}'}
