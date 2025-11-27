#> tusb_remake:area/portal/nether/dungeon_down/close
# 恐れ断ち切る地へのワープ閉じる
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# クリスタルのmin.min -1948 118 -55
# 看板 -1858 78 -58

data modify storage tusb_remake: portal_name set value "煉獄 恐れ断ち切る地"
data remove storage tusb_remake: portal.nether.dungeon_down
execute positioned -1948 118 -55 run function tusb_remake:area/portal/close

### チャンク読み込み
# execute positioned -2380 75 -131 run function tusb_remake:area/portal/set_command
setblock -1858 78 -58 minecraft:air
setblock -1858 78 -58 minecraft:oak_sign[rotation=4]{Text1:'{"text":""}',Text2:'{"bold":true,"color":"dark_aqua","text":"ワープクリスタル"}',Text3:'{"bold":true,"color":"dark_aqua","text":"右クリックで開通"}'}
