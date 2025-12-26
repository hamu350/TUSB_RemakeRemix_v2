#> tusb_remake:skill/summoner/fill/cast
# フィール発動
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute at @s run playsound item.totem.use master @a[distance=..16] ~ ~ ~ 1 1.2 0


execute if score @s ActivatedSkill matches 3290..3299 run function tusb_remake:skill/archer/crazy/summon