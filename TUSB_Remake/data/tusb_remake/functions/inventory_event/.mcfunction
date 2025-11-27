#> tusb_remake:inventory_event/
# インベントリに入手したときの処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 古いCanPlaceOn -> "minecraft:all"
execute if entity @s[advancements={tusb_remake:inventory_event={old_can_place_on_all=true}}] run function tusb_remake:inventory_event/old_can_place_on_all

## ハロウィンヘッドをくりぬく！
execute if entity @s[advancements={tusb_remake:inventory_event={carve_halloween=true}}] run function tusb_remake:inventory_event/carve_halloween

advancement revoke @s only tusb_remake:inventory_event
