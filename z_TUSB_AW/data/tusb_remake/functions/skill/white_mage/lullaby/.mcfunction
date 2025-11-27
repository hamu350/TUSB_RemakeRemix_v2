#> tusb_remake:skill/white_mage/tingle/
# キアリクを発動させる(400X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound entity.item.pickup master @a[distance=..16] ~ ~ ~ 1 2 0

execute as @a[distance=..15] at @s run function tusb_remake:skill/white_mage/lullaby/apply
