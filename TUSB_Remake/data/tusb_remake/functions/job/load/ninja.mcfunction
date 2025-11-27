#> tusb_remake:job/load/ninja
# 職業のデータをロードする
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

function #oh_my_dat:please
data modify storage tusb_remake: LoadData set from storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.JobData.Ninja
playsound minecraft:entity.firework_rocket.large_blast_far master @a[distance=..16] ~ ~ ~ 1 0.7 0
particle minecraft:explosion ~ ~1 ~ 1 1 1 0.1 200 force

title @s times 10 50 20
title @s title {"text":"= 忍者 =","color":"dark_green"}
