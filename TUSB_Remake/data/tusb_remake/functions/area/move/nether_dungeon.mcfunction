#> tusb_remake:area/move/nether_dungeon
# ネザーアスレチックに移動したときの演出
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 0.6 0.5 0
title @s subtitle {"text":"= Purgatory =","italic":true,"color":"black"}
title @s title {"text":" 煉  獄 ","color":"dark_red","bold":true,"underlined":true}

### Adv処理
tag @s add Adv
