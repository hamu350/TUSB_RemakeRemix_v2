#> tusb_remake:system/switch_sightseeing
# 観光モードを切り替えます
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute store result storage tusb_remake: settings.is_sightseeing byte 1 unless data storage tusb_remake: settings{is_sightseeing:true}

execute if data storage tusb_remake: settings{is_sightseeing:true} run tellraw @a [{"selector":"@s"},{"color":"red","text":" によって観光モードに切り替わりました。"}]
execute if data storage tusb_remake: settings{is_sightseeing:true} as @a at @s run playsound minecraft:item.totem.use master @s ~ ~ ~ 0.5 0.67
execute if data storage tusb_remake: settings{is_sightseeing:true} run gamerule keepInventory true

execute unless data storage tusb_remake: settings{is_sightseeing:true} run tellraw @a [{"selector":"@s"},{"color":"green","text":" によって通常モードに切り替わりました。"}]
execute unless data storage tusb_remake: settings{is_sightseeing:true} run gamerule keepInventory false
