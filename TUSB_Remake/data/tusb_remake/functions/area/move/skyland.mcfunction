#> tusb_remake:area/move/skyland
# 通常世界に移動したときの演出
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute at @s[x=-53,y=23,z=34,distance=3..] run playsound minecraft:entity.firework_rocket.launch master @s ~ ~ ~ 4 0.5 0
title @s[x=-53,y=23,z=34,distance=3..] subtitle {"text":"= The Skylands =","italic":true,"color":"white"}
title @s[x=-53,y=23,z=34,distance=3..] title {"text":"通常世界","color":"gray","bold":true,"underlined":true}

### Adv処理
tag @s remove Adv
