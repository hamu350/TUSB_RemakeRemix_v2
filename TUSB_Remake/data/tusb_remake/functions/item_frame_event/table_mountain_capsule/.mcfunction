#> tusb_remake:item_frame_event/table_mountain_capsule/
# ガチャガチャ回した
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### エメラルドブロックが入っていたら、状態を記録or更新
execute as @e[type=item_frame,tag=Capsule,distance=..8,limit=1] if data entity @s Item{id:"minecraft:emerald_block"} run function tusb_remake:item_frame_event/table_mountain_capsule/check

### 中身があるけどエメラルドブロックじゃないとき
execute as @e[type=item_frame,tag=Capsule,distance=..8,limit=1] if data entity @s Item unless data entity @s Item{id:"minecraft:emerald_block"} run function tusb_remake:item_frame_event/table_mountain_capsule/return
