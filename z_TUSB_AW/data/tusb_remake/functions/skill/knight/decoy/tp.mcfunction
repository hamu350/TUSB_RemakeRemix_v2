#> tusb_remake:skill/knight/decoy/tp
# デコイの引き寄せ
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:entity.enderman.teleport master @a[distance=..32] ~ ~ ~ 2 2 0
particle portal ~ ~1 ~ 0.1 0.5 0.1 0.001 30 force
tp @s ~ ~ ~
