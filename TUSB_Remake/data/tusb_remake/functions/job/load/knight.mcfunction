#> tusb_remake:job/load/knight
# 職業のデータをロードする
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

function #oh_my_dat:please
data modify storage tusb_remake: LoadData set from storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.JobData.Knight
playsound minecraft:block.anvil.use master @a[distance=..16] ~ ~ ~ 1 0.78 0
particle minecraft:happy_villager ~ ~1 ~ 1 1 1 0 200 force

title @s times 10 50 20
title @s title {"text":"= 剣士 =","color":"blue"}
