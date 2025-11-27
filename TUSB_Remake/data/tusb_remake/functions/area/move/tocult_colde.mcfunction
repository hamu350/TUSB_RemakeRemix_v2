#> tusb_remake:area/move/tocult_colde
# トカルトコルデに移動したときの演出
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute at @s run playsound minecraft:entity.zombie_horse.death master @s ~ ~ ~ 4 0.5 0
title @s subtitle {"text":"= Ice Sheet Float =","italic":true,"color":"dark_aqua"}
title @s title {"text":"トカルトコルデ","color":"aqua","bold":true,"underlined":true}

### エリア侵入記録
data modify storage tusb_remake: area_name.tocult_colde set value "トカルトコルデ"

### Adv処理
tag @s add Adv
