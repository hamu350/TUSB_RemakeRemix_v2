#> tusb_remake:armor_stand/log_breaker/
# 看板を設置する
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute as @e[tag=LogBreakPoint] at @s run function tusb_remake:armor_stand/log_breaker/1/1
schedule function tusb_remake:armor_stand/log_breaker/2/ 1t
fill -1923 3 -87 -1905 11 -69 minecraft:air destroy
execute as @e[tag=LogBreakPoint,limit=1] at @s run tp @e[x=-1923,y=3,z=-87,dx=18,dy=8,dz=18,type=item] ~ ~ ~
kill @e[tag=LogBreakPoint]
