#> tusb_remake:area/move/nether_trial
# ネザーアスレチックに移動したときの演出
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute at @s run playsound minecraft:block.portal.trigger master @s ~ ~ ~ 4 0.5 0
title @s subtitle {"text":"= Nether Trial =","italic":true,"color":"black"}
title @s title {"text":"ネザーアスレ","color":"dark_red","bold":true,"underlined":true}

### Adv処理
tag @s add Adv

### 手持ちアイテムがないはずなのでクリアしちゃえ！！
clear @s[gamemode=!creative]
