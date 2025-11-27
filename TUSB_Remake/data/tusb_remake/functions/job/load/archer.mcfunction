#> tusb_remake:job/load/archer
# 職業のデータをロードする
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

function #oh_my_dat:please
data modify storage tusb_remake: LoadData set from storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.JobData.Archer
playsound minecraft:entity.arrow.hit master @a[distance=..16] ~ ~ ~ 1 0.7 0
particle minecraft:crit ~ ~1 ~ 1 1 1 1 200 force

title @s times 10 50 20
title @s title {"text":"= 狩人 =","color":"red"}
