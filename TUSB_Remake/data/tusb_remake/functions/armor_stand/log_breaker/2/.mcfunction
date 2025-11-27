#> tusb_remake:armor_stand/log_breaker/2/
# 看板を設置する
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute as @e[type=item,tag=LogBreakerItem] at @s run function tusb_remake:armor_stand/log_breaker/2/1
execute if entity @e[type=item,tag=LogBreakerItem] run schedule function tusb_remake:armor_stand/log_breaker/2/ 1t
