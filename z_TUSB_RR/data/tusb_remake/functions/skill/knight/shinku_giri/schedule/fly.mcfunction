#> tusb_remake:skill/knight/shinku_giri/schedule/fly
### 真空斬りの弾を飛ばす
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:entity.wither.shoot master @a[distance=..16] ~ ~ ~ 0.5 2 0.1
particle explosion ~ ~1 ~ 0 0 0 0 1 force

data modify storage tusb_remake: _ set value true
