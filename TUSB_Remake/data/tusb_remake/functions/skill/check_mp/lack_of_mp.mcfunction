#> tusb_remake:skill/check_mp/lack_of_mp
# MP不足時
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

title @s times 0 0 20
title @s subtitle {"text":"ＭＰが足りない！","color":"red"}
title @s title {"text":""}
playsound minecraft:block.comparator.click master @a[distance=..16] ~ ~ ~ 1 1.2 0
particle smoke ~ ~1 ~ 0.5 0.5 0.5 0 30 force

scoreboard players set @s ActivatedSkill 0
