#> tusb_remake:armor_stand/log_breaker/2/1
# 看板を設置する
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ #minecraft:logs run setblock ~ ~ ~ minecraft:air destroy
execute positioned ~-1 ~1 ~0 if block ~ ~ ~ #minecraft:logs run setblock ~ ~ ~ minecraft:air destroy
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ #minecraft:logs run setblock ~ ~ ~ minecraft:air destroy
execute positioned ~0 ~1 ~-1 if block ~ ~ ~ #minecraft:logs run setblock ~ ~ ~ minecraft:air destroy
execute positioned ~0 ~1 ~0 if block ~ ~ ~ #minecraft:logs run setblock ~ ~ ~ minecraft:air destroy
execute positioned ~0 ~1 ~1 if block ~ ~ ~ #minecraft:logs run setblock ~ ~ ~ minecraft:air destroy
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ #minecraft:logs run setblock ~ ~ ~ minecraft:air destroy
execute positioned ~1 ~1 ~0 if block ~ ~ ~ #minecraft:logs run setblock ~ ~ ~ minecraft:air destroy
execute positioned ~1 ~1 ~1 if block ~ ~ ~ #minecraft:logs run setblock ~ ~ ~ minecraft:air destroy
execute positioned ~-1 ~1 ~-1 align xyz run tag @e[type=item,dx=2,dz=2,tag=!TypeChecked] add LogBreakerItem
tag @s remove LogBreakerItem
