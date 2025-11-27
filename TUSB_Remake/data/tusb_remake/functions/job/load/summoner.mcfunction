#> tusb_remake:job/load/summoner
# 職業のデータをロードする
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

function #oh_my_dat:please
data modify storage tusb_remake: LoadData set from storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.JobData.Summoner
playsound minecraft:block.portal.ambient master @a[distance=..16] ~ ~ ~ 1 1.7 0
particle minecraft:enchant ~ ~1.5 ~ 0.1 0.6 0.1 4 300 force

title @s times 10 50 20
title @s title {"text":"= 召喚士 =","color":"gold"}
