#> tusb_remake:area/portal/nether/dungeon_entrance/open
# 煉獄 入り口のワープ開放
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage tusb_remake: portal_name set value "煉獄 入り口"
data modify storage tusb_remake: portal.table_mountain.happy_city set value true
execute positioned 12 15 -76 run function tusb_remake:area/portal/open
