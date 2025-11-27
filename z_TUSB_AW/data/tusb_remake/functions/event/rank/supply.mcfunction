#> tusb_remake:event/rank/supply
# イベントモブ召喚
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

me 「こちらポイント・ブラボー。支援班、補給物資を要請する。」
summon minecraft:chicken ~ ~1 ~ {Motion:[0d,1d,0d],DeathLootTable:"minecraft:empty",Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:ochre_froglight"},TileEntityData:{LootTable:"usb:events/supply"},Glowing:true,DropItem:false,Tags:[SupplyBox]}]}
execute as @e[tag=SupplyBox] run data modify entity @s BlockState.Name set value "minecraft:chest"
