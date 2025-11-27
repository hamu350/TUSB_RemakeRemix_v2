#> tusb_remake:skill/ninja/isukumi/schedule/fly
### 飛んでいる居縮の演出
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:entity.mooshroom.shear master @a[distance=..16] ~ ~ ~ 0.2 1.2 0
particle minecraft:dragon_breath ~ ~-0.3 ~ 0 0 0 0 1 force

data modify storage tusb_remake: _ set value true
