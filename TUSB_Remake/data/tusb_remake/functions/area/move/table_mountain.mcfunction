#> tusb_remake:area/move/table_mountain
# テーブルマウンテンに移動したときの演出
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute at @s run playsound minecraft:entity.elder_guardian.ambient master @s ~ ~ ~ 4 0.5 0
title @s subtitle {"text":"= Table Mountain =","italic":true,"color":"dark_green"}
title @s title {"text":"テーブルマウンテン","color":"green","bold":true,"underlined":true}

### エリア侵入記録
data modify storage tusb_remake: area_name.table_mountain set value "テーブルマウンテン"

### Adv処理
tag @s add Adv

### 手持ちアイテムがないはずなのでクリアしちゃえ！！
clear @s[gamemode=!creative]
