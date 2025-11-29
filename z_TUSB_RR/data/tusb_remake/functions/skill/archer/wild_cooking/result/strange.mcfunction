#> tusb_remake:skill/archer/wild_cooking/result/strange
# ワイルドクッキング発動(303X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:entity.zombie.destroy_egg master @a[distance=..16] ~ ~ ~ 1 1.6 0
particle minecraft:crit ~ ~1 ~ 0.5 0.5 0.5 0 30 force

title @s times 0 10 10
title @s subtitle {"text":"上手に焼けましたー？","color":"light_purple"}
title @s title {"text":""}
