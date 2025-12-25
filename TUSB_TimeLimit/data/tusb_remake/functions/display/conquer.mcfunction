#> tusb_remake:display/conquer
# 攻略率表示
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute store result score 経過時間 Settings run time query gametime
execute store result score _ Settings run data get storage tusb_remake: start_time
execute store result storage math: in int 1 run scoreboard players operation 経過時間 Settings -= _ Settings

## 経過時間を表示用に分割
function #math:clock

data modify storage tusb_remake: _ set value ""
execute if score SightseeingDeath Settings matches 1.. run data modify storage tusb_remake: _ set value '[{"text":"(観光中の死:","color":"gray","italic":false},{"score":{"name":"SightseeingDeath","objective":"Settings"},"color":"red"},")"]'
tellraw @s {"text":"= 攻略率 =","color":"white","bold":true}
tellraw @s [{"translate":"全エリア %1$s/%2$s (%3$s.%4$s%%) %5$s経過","color":"white","bold":false,"with":[{"nbt":"conquer.count.total","storage":"tusb_remake:","bold":true,"italic":false},{"score":{"name":"MaxPortalCount","objective":"Settings"}},{"nbt":"conquer.rate.int[]","storage":"tusb_remake:","separator":""},{"nbt":"conquer.rate.cent[]","storage":"tusb_remake:","separator":""},{"translate":"%1$s時間%2$s分%3$s秒","italic":false,"bold":false,"color":"white","with":[{"nbt":"out.total_hour","storage":"math:"},{"nbt":"out.minute","storage":"math:"},{"nbt":"out.second","storage":"math:"}]}]},{"nbt":"_","storage":"tusb_remake:","interpret":true}]
tellraw @s {"translate":"通常世界: %1$s/43 ネザー: %2$s/1 エンド: %3$s/1","color":"gray","bold":true,"with":[{"nbt":"conquer.count.skyland","storage":"tusb_remake:","color":"aqua"},{"nbt":"conquer.count.nether","storage":"tusb_remake:","color":"aqua"},{"nbt":"conquer.count.end","storage":"tusb_remake:","color":"aqua"}]}
tellraw @s {"translate":"%1$s: %2$s/1 %3$s: %4$s/1 %5$s: %6$s/1 %7$s: %8$s/1 %9$s: %10$s/1","color":"gray","bold":true,"with":[{"nbt":"area_name.underworld","storage":"tusb_remake:"},{"nbt":"conquer.count.underworld","storage":"tusb_remake:","color":"aqua"},{"nbt":"area_name.cloudia","storage":"tusb_remake:"},{"nbt":"conquer.count.cloudia","storage":"tusb_remake:","color":"aqua"},{"nbt":"area_name.table_mountain","storage":"tusb_remake:"},{"nbt":"conquer.count.table_mountain","storage":"tusb_remake:","color":"aqua"},{"nbt":"area_name.gullivers_land","storage":"tusb_remake:"},{"nbt":"conquer.count.gullivers_land","storage":"tusb_remake:","color":"aqua"},{"nbt":"area_name.tocult_colde","storage":"tusb_remake:"},{"nbt":"conquer.count.tocult_colde","storage":"tusb_remake:","color":"aqua"}]}

##トリガーリセット
scoreboard players reset @s ShowMenu
scoreboard players enable @s ShowMenu