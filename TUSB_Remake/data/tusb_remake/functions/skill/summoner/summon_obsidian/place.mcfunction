#> tusb_remake:skill/summoner/summon_obsidian/place
# 黒曜石を召喚
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

setblock ~ ~ ~ minecraft:crying_obsidian keep

summon minecraft:item_frame ~ ~ ~ {Fixed:true,Invulnerable:true,Invisible:true,Facing:1b,Tags:[MagicBlock,MagicObsidian,PreMagicBlock,SystemEntity,TypeChecked]}
