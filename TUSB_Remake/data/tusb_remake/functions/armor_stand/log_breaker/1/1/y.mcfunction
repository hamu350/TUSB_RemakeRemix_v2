#> tusb_remake:armor_stand/log_breaker/1/1/y
# 看板を設置する
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute positioned ~ ~-1 ~ if block ~ ~ ~ #minecraft:logs run setblock ~ ~ ~ minecraft:air destroy
execute positioned ~ ~00 ~ if block ~ ~ ~ #minecraft:logs run setblock ~ ~ ~ minecraft:air destroy
