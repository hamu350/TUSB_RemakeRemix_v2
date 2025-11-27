#> tusb_remake:area/move/nether
# ネザーに移動したときの演出
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute at @s run playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 4 0.5 0
title @s subtitle {"text":"= The Nether =","italic":true,"color":"dark_red"}
title @s title {"text":"ネザー","color":"red","bold":true,"underlined":true}

### Adv処理
tag @s remove Adv
