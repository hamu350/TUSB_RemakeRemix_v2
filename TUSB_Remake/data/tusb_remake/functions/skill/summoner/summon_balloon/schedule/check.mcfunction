#> tusb_remake:skill/summoner/summon_balloon/schedule/check
### バルーン発射までの演出
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:block.note_block.harp master @a[distance=..16] ~ ~ ~ 0.3 1.4 0
particle minecraft:instant_effect ~ ~0.5 ~ 0.3 0.5 0.3 0.1 6 force

data modify storage tusb_remake: _ set value true
