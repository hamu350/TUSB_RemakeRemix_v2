#> tusb_remake:skill/summoner/summon_ender_chest/place
# エンダーチェストを召喚
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

setblock ~ ~ ~ minecraft:ender_chest keep

execute if block ~ ~ ~ ender_chest run summon minecraft:item_frame ~ ~ ~ {Fixed:true,Invulnerable:true,Invisible:true,Facing:1b,Tags:[MagicBlock,MagicEnderChest,PreMagicBlock,SystemEntity,TypeChecked,ParsonalLocker]}

execute unless block ~ ~ ~ ender_chest positioned ~-0.5 ~1 ~-0.5 if entity @s[dx=0] positioned ~0.5 ~ ~0.5 run function tusb_remake:skill/summoner/summon_ender_chest/place
