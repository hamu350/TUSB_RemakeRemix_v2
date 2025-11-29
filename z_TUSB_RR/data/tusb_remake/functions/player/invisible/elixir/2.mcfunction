#> tusb_remake:player/invisible/elixir/2
# 透明化がかかっている場合、それに応じて特殊効果をかける
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### HP回復
scoreboard players operation @s HealCount += @s HPMax
scoreboard players operation @s HealCount += @s HPMax
### MP回復
scoreboard players operation @s MP = @s MPMax
