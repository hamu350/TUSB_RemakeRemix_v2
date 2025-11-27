#> tusb_remake:athletic/speed_run/start
# スピードラン開始
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### スタート
## 前の段階の
execute as 0-0-4-0-4 at @s if block ~ ~ ~ minecraft:glass run fill -535 ~ ~ -495 ~1 ~41 minecraft:air
execute as 0-0-4-0-4 at @s if block ~ ~ ~ #tusb_remake:stained_glass run execute as 0-0-4-0-4 at @s positioned -523 64 1324 run fill ~ ~ ~ ~3 ~17 ~3 minecraft:air
execute as 0-0-4-0-4 at @s run tp 0-0-4-0-4 ~ 54.5 ~

### スケジュール有効化
execute in minecraft:overworld run schedule function tusb_remake:athletic/speed_run/schedule 2s replace

effect clear @a[x=-538,y=54,z=1273,dx=46,dy=44,dz=62] minecraft:speed
effect give @a[x=-538,y=54,z=1273,dx=46,dy=44,dz=62] minecraft:speed 10 12
playsound minecraft:entity.horse.armor master @a[x=-538,y=54,z=1273,dx=46,dy=44,dz=62] -515.0 120 1313.0 0.1 0.5 1
title @a[x=-538,y=54,z=1273,dx=46,dy=44,dz=62] times 0 40 20
title @a[x=-538,y=54,z=1273,dx=46,dy=44,dz=62] subtitle {"text":"駆け抜けろ！"}
title @a[x=-538,y=54,z=1273,dx=46,dy=44,dz=62] title {"text":"スピードラン","color":"dark_aqua"}
