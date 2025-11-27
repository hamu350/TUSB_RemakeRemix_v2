#> tusb_remake:skill/summoner/gold_basin/cast
# 金タライ発動
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute as @e[distance=..30,type=#tusb_remake:mob,tag=Enemy] at @s anchored eyes positioned ^ ^ ^ anchored feet positioned ~ ~1.0 ~ run function tusb_remake:skill/summoner/abisu/summon
execute as @e[distance=..30,type=#tusb_remake:mob,tag=Enemy] at @s run particle dragon_breath ~ ~1 ~ 1 0.7 1 0.1 80 force
execute as @e[distance=..30,type=#tusb_remake:mob,tag=Enemy] at @s run playsound block.respawn_anchor.deplete master @a[distance=..32] ~ ~ ~ 2 1 0.1
execute as @a[distance=..30] at @e[distance=..30,type=#tusb_remake:mob,tag=Enemy,limit=1,sort=nearest] run function tusb_remake:player/clear_bad_effect
execute at @e[tag=abisu] run function tusb_remake:skill/summoner/abisu/schedule/zenntaikougeki
execute in minecraft:overworld run schedule function tusb_remake:skill/summoner/abisu/schedule/ 1t

