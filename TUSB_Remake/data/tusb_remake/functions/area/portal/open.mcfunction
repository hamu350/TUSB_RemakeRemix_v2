#> tusb_remake:area/portal/open
# ワープポータル開放
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

forceload add ~ ~ ~2 ~2
execute if block ~ ~ ~ minecraft:barrier run tellraw @a [{"translate":"ワープクリスタル【%1$s】が開通した。","color":"aqua","with":[{"nbt":"portal_name","storage":"tusb_remake:"}]}]
execute if block ~ ~ ~ minecraft:barrier run fill ~ ~ ~ ~2 ~3 ~2 minecraft:air replace minecraft:barrier
forceload remove ~ ~ ~2 ~2
