#> tusb_remake:job/load/black_mage
# 職業のデータをロードする
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

function #oh_my_dat:please
data modify storage tusb_remake: LoadData set from storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.JobData.BlackMage
playsound minecraft:entity.blaze.shoot master @a[distance=..16] ~ ~ ~ 1 0.65
particle witch ~ ~1 ~ 0.5 1 0.5 0.1 200 force

title @s times 10 50 20
title @s title {"text":"= 黒魔導士 =","color":"dark_purple"}
