#> tusb_remake:item_frame_event/
# 額縁との対話処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## テーブルマウンテンのガチャガチャだったら
execute if entity @s[advancements={tusb_remake:item_frame_event={table_mountain_capsule=true}}] run function tusb_remake:item_frame_event/table_mountain_capsule/


advancement revoke @s only tusb_remake:item_frame_event
