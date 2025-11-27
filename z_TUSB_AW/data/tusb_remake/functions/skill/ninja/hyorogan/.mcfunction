#> tusb_remake:skill/ninja/hyorogan/
# 兵糧丸を発動させる(205X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:entity.player.burp master @a[distance=..16] ~ ~ ~ 1 0.8 0
particle minecraft:item minecraft:mushroom_stew ~ ~1.35 ~ 0.01 0.1 0.01 0.05 30 force @a[distance=..64]

effect give @s minecraft:saturation 1 1 true
function tusb_remake:player/clear_bad_effect
