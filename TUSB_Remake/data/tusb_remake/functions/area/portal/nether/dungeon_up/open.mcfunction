#> tusb_remake:area/portal/nether/dungeon_up/open
# 迷い断ち切る地へのワープ開放
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage tusb_remake: portal_name set value "迷い断ち切る地"
data modify storage tusb_remake: portal.table_mountain.waterway_village set value true
execute positioned -1948 123 -55 run function tusb_remake:area/portal/open
