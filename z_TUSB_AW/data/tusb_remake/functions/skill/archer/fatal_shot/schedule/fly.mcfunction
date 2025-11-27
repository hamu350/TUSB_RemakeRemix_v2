#> tusb_remake:skill/archer/fatal_shot/schedule/fly
### フェイタルショットが飛んでいる演出
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:block.glass.break master @a[distance=..32] ~ ~ ~ 0.6 1.8 0.1
particle minecraft:witch ~ ~0.2 ~ 0 0 0 0.1 2 force

data modify storage tusb_remake: _ set value true
