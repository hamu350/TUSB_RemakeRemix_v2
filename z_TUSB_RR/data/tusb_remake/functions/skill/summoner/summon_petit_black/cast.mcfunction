#> tusb_remake:skill/summoner/summon_petit_black/cast
# ぷちブラックを召喚
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:block.portal.travel master @a[distance=..32] ~ ~100 ~ 0.1 1.6 0.1
playsound minecraft:entity.enderman.stare master @a[distance=..32] ~ ~100 ~ 10 0.5 0.00001
particle minecraft:dragon_breath ~ ~ ~ 0.5 0.5 0.5 0.1 90 force

execute align xyz positioned ~0.5 ~ ~0.5 positioned ~ ~-1 ~ run function tusb_remake:skill/summoner/summon_petit_black/place
