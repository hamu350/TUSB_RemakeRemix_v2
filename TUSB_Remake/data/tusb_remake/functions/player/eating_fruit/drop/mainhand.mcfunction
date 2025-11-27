#> tusb_remake:player/eating_fruit/drop/mainhand
# メインのアイテムを減らすよ
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage tusb_remake: item set from entity @s SelectedItem
item replace entity @s weapon.mainhand with minecraft:air
### 数を１つ減らす
execute store result storage tusb_remake: item.Count byte 0.9999999999 run data get storage tusb_remake: item.Count
### アイテムを返却
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:chorus_fruit",Count:1b},Tags:[AntiChorusMain],PickupDelay:1s}
execute as @e[distance=0,tag=AntiChorusMain] run data modify entity @s Item set from storage tusb_remake: item
