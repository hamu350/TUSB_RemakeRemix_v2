#> tusb_remake:skill/summoner/magic_block/break
# 魔法のブロックを消す
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute if entity @s[tag=MagicObsidian] run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:crying_obsidian

execute if entity @s[tag=MagicEnderChest] run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:ender_chest

execute if entity @s[tag=MagicPetitBlack] run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:obsidian

kill @s
