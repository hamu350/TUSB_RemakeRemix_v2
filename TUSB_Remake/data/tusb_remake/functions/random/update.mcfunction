#> tusb_remake:random/update
# 乱数更新
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

scoreboard players set _ RndMWC 31743
scoreboard players operation @s RndMWC *= _ RndMWC
scoreboard players operation @s RndMWC += @s RndMWCCarry
scoreboard players operation @s RndMWCCarry = @s RndMWC
scoreboard players set _ RndMWC 65536
scoreboard players operation @s RndMWC %= _ RndMWC
scoreboard players operation @s RndMWCCarry /= _ RndMWC

scoreboard players operation @s Random = @s RndMWC
