#> tusb_remake:personal_locker/open/seek
# 
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute if block ~ ~ ~ minecraft:ender_chest run function tusb_remake:personal_locker/open/personal
execute unless block ~ ~ ~ minecraft:ender_chest positioned ^ ^ ^0.1 run function tusb_remake:personal_locker/open/seek
