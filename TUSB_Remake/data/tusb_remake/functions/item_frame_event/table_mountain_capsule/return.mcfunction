#> tusb_remake:item_frame_event/table_mountain_capsule/return
# ガチャガチャの中身を返す
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 額縁の中身がエメラルドブロックじゃなかったら
### アイテムを返却
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:white_wool",Count:1b},PickupDelay:1s,Tags:[CapsuleReturn]}
execute as @e[distance=0,type=item,tag=CapsuleReturn,limit=1] run data modify entity @s Item set from entity @e[type=item_frame,tag=Capsule,distance=..8,limit=1] Item
execute as @e[distance=0,type=item,tag=CapsuleReturn,limit=1] run tag @s remove CapsuleReturn
### 状態を元に戻す
data merge entity @e[type=item_frame,tag=Capsule,distance=..8,limit=1] {Item:{id:"minecraft:air"},ItemRotation:0b}
