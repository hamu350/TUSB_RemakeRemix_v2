#> tusb_remake:item_frame_event/table_mountain_capsule/check
# ガチャガチャ回した
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### エメラルドブロックだった時
### 回転を記録
data modify entity @s Item.tag.Rotations append from entity @s ItemRotation

### １周していたら報酬に置き換え
execute if data entity @s {ItemRotation:0b,Item:{tag:{Rotations:[0b,1b,2b,3b,4b,5b,6b,7b]}}} run playsound minecraft:entity.skeleton.death master @a ~ ~ ~ 1 1
execute if data entity @s {ItemRotation:0b,Item:{tag:{Rotations:[0b,1b,2b,3b,4b,5b,6b,7b]}}} run loot replace entity @s container.0 loot usb:gameplay/capsule
