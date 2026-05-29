#> player_manager:show_text/sneak_menu/data/conquer
# 攻略率表示
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

tellraw @s {"text":"= 攻略率 =","color":"white","bold":true}
tellraw @s [{"translate":"全エリア %1$s/%2$s (%3$s.%4$s%%) %5$s経過","color":"white","bold":false,"with":[{"nbt":"conquer.count.total","storage":"tusb_remake:","bold":true,"italic":false},{"score":{"name":"MaxPortalCount","objective":"Settings"}},{"nbt":"conquer.rate.int[]","storage":"tusb_remake:","separator":""},{"nbt":"conquer.rate.cent[]","storage":"tusb_remake:","separator":""},{"translate":"%1$s時間%2$s分%3$s秒","italic":false,"bold":false,"color":"white","with":[{"nbt":"out.total_hour","storage":"math:"},{"nbt":"out.minute","storage":"math:"},{"nbt":"out.second","storage":"math:"}]}]},{"nbt":"_","storage":"tusb_remake:","interpret":true}]
tellraw @s {"translate":"通常世界: %1$s/53 ネザー: %2$s/3 エンド: %3$s/3","color":"gray","bold":true,"with":[{"nbt":"conquer.count.skyland","storage":"tusb_remake:","color":"aqua"},{"nbt":"conquer.count.nether","storage":"tusb_remake:","color":"aqua"},{"nbt":"conquer.count.end","storage":"tusb_remake:","color":"aqua"}]}
tellraw @s {"translate":"%1$s: %2$s/2 %3$s: %4$s/5 %5$s: %6$s/4 %7$s: %8$s/1 %9$s: %10$s/8","color":"gray","bold":true,"with":[{"nbt":"area_name.underworld","storage":"tusb_remake:"},{"nbt":"conquer.count.underworld","storage":"tusb_remake:","color":"aqua"},{"nbt":"area_name.cloudia","storage":"tusb_remake:"},{"nbt":"conquer.count.cloudia","storage":"tusb_remake:","color":"aqua"},{"nbt":"area_name.table_mountain","storage":"tusb_remake:"},{"nbt":"conquer.count.table_mountain","storage":"tusb_remake:","color":"aqua"},{"nbt":"area_name.gullivers_land","storage":"tusb_remake:"},{"nbt":"conquer.count.gullivers_land","storage":"tusb_remake:","color":"aqua"},{"nbt":"area_name.tocult_colde","storage":"tusb_remake:"},{"nbt":"conquer.count.tocult_colde","storage":"tusb_remake:","color":"aqua"}]}
tellraw @s ""
