#> world_manager:dimension/skylands/sealed_alter/
# かつての驚異島
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute if block ~ ~-1 ~ minecraft:air if block ~ ~ ~ #lib:monster_egg run function world_manager:dimension/skylands/sealed_alter/angry

execute if block ~ ~-1 ~ minecraft:chest run function world_manager:dimension/skylands/sealed_alter/keep
