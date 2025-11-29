#> tusb_remake:player/invisible/elixir/1
# 透明化がかかっている場合、それに応じて特殊効果をかける
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### HP回復
scoreboard players operation @s HealCount += @s HPMax
### MP回復
scoreboard players operation @s MP += @s MP
execute store result storage tusb_remake: _ int 0.5 run scoreboard players operation @s MP += @s MPMax
execute store result score @s MP run data get storage tusb_remake: _
scoreboard players operation @s MP < @s MPMax
