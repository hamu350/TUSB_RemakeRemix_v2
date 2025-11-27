#> tusb_remake:area/portal/nether/dungeon_down/open
# 恐れ断ち切る地へのワープ開放
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage tusb_remake: portal_name set value "煉獄 恐れ断ち切る地"
data modify storage tusb_remake: portal.nether.dungeon_down set value true
execute positioned -1948 118 -55 run function tusb_remake:area/portal/open
