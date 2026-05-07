#> player_manager:item_use/firework/
# 花火を使った時
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### エリトラ装備だったら消費を検証する
execute if data entity @s Inventory[{Slot:102b,id:"minecraft:elytra"}] run function player_manager:item_use/firework/damage

scoreboard players reset @s UseFireworkRocket
