#> world_manager:dimension/skylands/sealed_alter/
# かつての驚異島
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# execute if block ~ ~-1 ~ minecraft:air if block ~ ~ ~ #lib:monster_egg run function world_manager:dimension/skylands/sealed_alter/angry

execute if block ~ ~-1 ~ minecraft:chest run function world_manager:dimension/skylands/sealed_alter/keep

execute store success storage _: success byte 1 if block 38 319 62 sugar_cane if block 41 319 61 sugar_cane if block 41 319 65 sugar_cane
execute if data storage _: {success: 0b} positioned 8.5 14.0 58.5 run function world_manager:dimension/skylands/sealed_alter/angry
