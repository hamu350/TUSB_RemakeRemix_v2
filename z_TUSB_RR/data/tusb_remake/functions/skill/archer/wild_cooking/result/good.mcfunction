#> tusb_remake:skill/archer/wild_cooking/result/good
# ワイルドクッキング発動(303X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:entity.zombie.infect master @a[distance=..16] ~ ~ ~ 1 1.6 0
particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0 30 force

title @s times 0 10 10
title @s subtitle {"text":"上手に焼けましたー！","color":"green"}
title @s title {"text":""}
