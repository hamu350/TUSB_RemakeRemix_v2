#> tusb_remake:skill/summoner/tsuntsun/fungus/attack/schedule/fly
### 飛んでいるつんつん雪玉の演出
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.



playsound minecraft:entity.witch.throw master @a[distance=..16] ~ ~ ~ 0.8 1.2 0
playsound minecraft:entity.mooshroom.shear master @a[distance=..32] ~ ~ ~ 1 1.2 0.1
# particle minecraft:sweep_attack ~ ~-0.3 ~ 0 0 0 0 1 force

data modify storage tusb_remake: _ set value true
