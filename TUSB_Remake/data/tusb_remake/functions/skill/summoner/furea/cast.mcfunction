#> tusb_remake:skill/summoner/fill/cast
# フィール発動
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute at @s run playsound minecraft:entity.enderman.teleport master @a[distance=..32] ~ ~ ~ 2 0.7 0
execute at @s run particle portal ~ ~1 ~ 0 0.5 0 1 200 force


execute if score @s ActivatedSkill matches 6310..6319 as @e[distance=..20,type=#tusb_remake:mob,tag=Enemy] run function tusb_remake:skill/summoner/furea/tp
