#> tusb_remake:area/move/end
# エンドに移動したときの演出
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute at @s run playsound minecraft:entity.zombie.infect master @s ~ ~ ~ 4 0.5 0
title @s subtitle {"text":"= The End =","italic":true,"color":"gray"}
title @s title {"text":"ジ・エンド","color":"black","bold":true,"underlined":true}

### Adv処理
tag @s add Adv
