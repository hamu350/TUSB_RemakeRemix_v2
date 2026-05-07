#> player_manager:volcano/
# ネザーでネザーラックを壊すと噴火
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute if predicate world_manager:area/nether run function world_manager:dimension/nether/volcano/eruption

scoreboard players reset @s MineNetherrack
