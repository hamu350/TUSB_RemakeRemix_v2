#> tusb_remake:area/move/gullivers_land
# ガリバーランドに移動したときの演出
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute at @s run playsound minecraft:entity.firework_rocket.twinkle_far master @s ~ ~ ~ 4 0.5 0
title @s subtitle {"text":"= Gulliver's Land =","italic":true,"color":"gold"}
title @s title {"text":"ガリバーランド","color":"yellow","bold":true,"underlined":true}

### エリア侵入記録
data modify storage tusb_remake: area_name.gullivers_land set value "ガリバーランド"

### Adv処理
tag @s add Adv
