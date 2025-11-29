#> tusb_remake:skill/knight/zan_tetsu_ken/slash/
# 斬鉄剣の対象を斬る
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute store result score _ TUSB run time query gametime
execute as @e[tag=ZantetsuPoint] if score @s TUSB = _ TUSB at @s as @e[distance=..10,type=#tusb_remake:mob,tag=Enemy] at @s run function tusb_remake:skill/knight/zan_tetsu_ken/slash/target

execute as @e[tag=ZantetsuPoint] if score @s TUSB <= _ TUSB run kill @s
