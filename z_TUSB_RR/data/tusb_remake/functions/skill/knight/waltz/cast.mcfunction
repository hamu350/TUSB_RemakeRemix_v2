#> tusb_remake:skill/summoner/fill/cast
# フィール発動
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute at @s run playsound entity.wither.ambient master @a[distance=..16] ~ ~ ~ 1 1.9 0
execute if score @s ActivatedSkill matches 1280..1289 run function tusb_remake:skill/knight/waltz/summon
execute as @s at @a[distance=..15] run effect give @s strength 10 20