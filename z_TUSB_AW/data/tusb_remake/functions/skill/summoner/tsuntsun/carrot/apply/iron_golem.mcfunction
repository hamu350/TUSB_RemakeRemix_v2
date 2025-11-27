#> tusb_remake:skill/summoner/tsuntsun/carrot/apply/iron_golem
# アイアンゴーレムによる補助をかける
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:entity.iron_golem.death master @a[distance=..16] ~ ~ ~ 2 1.8 0
particle minecraft:crit ~ ~1 ~ 0.5 1 0.5 0.1 30 force
### レベル１
execute if score _ ActivatedSkill matches 6240 run effect give @s minecraft:resistance 20 1 true
### レベル２
execute if score _ ActivatedSkill matches 6241..6249 run effect give @s minecraft:resistance 20 2 true
