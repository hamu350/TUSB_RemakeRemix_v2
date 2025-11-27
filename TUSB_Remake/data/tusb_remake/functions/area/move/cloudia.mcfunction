#> tusb_remake:area/move/cloudia
# クラウディアに移動したときの演出
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute at @s[x=-2725,y=88,z=-382,distance=3..] run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 4 0.5 0
title @s[x=-2725,y=88,z=-382,distance=3..] subtitle {"text":"= Cloudia =","italic":true,"color":"gray"}
title @s[x=-2725,y=88,z=-382,distance=3..] title {"text":"クラウディア","color":"white","bold":true,"underlined":true}

### エリア侵入記録
data modify storage tusb_remake: area_name.cloudia set value "クラウディア"

### Adv処理
tag @s add Adv
