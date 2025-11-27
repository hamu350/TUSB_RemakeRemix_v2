#> tusb_remake:skill/summoner/tsuntsun/carrot/apply/snow_golem
# スノーゴーレムによる補助をかける
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:block.amethyst_cluster.break master @a[distance=..16] ~ ~ ~ 1 0.72 0
particle minecraft:snowflake ~ ~1 ~ 0.5 0.5 0.5 0 20 force
### レベル１
execute if score _ ActivatedSkill matches 6240 run effect give @s minecraft:haste 20 1 true
### レベル２
execute if score _ ActivatedSkill matches 6241..6249 run effect give @s minecraft:haste 20 3 true
