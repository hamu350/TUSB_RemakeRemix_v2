#> tusb_remake:athletic/speed_run/process
# スピードラン
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.
### スケジュール

# 前の段階の足場を消す
## 道
execute as 0-0-4-0-4 at @s if block ~ ~ ~ minecraft:glass run fill -535 ~ ~ -495 ~ ~41 minecraft:air
## 柱
execute as 0-0-4-0-4 at @s if block ~ ~ ~ minecraft:orange_stained_glass positioned -523 64 1324 run fill ~ ~ ~ ~3 ~17 ~3 minecraft:air
# 進める
execute as 0-0-4-0-4 at @s run tp 0-0-4-0-4 ~ ~1 ~
# 次の段階の足場を出す
## 道
execute as 0-0-4-0-4 at @s if block ~ ~ ~ minecraft:glass run clone -587 ~ ~ -547 ~ ~41 -535 ~ ~ masked normal
## 柱
execute as 0-0-4-0-4 at @s if block ~ ~ ~ minecraft:light_blue_stained_glass positioned -575 64 1324 run clone ~ ~ ~ ~3 ~17 ~3 ~52 ~ ~
## 柱の時はy+13
execute as 0-0-4-0-4 at @s if block ~ ~ ~ minecraft:light_blue_stained_glass run tp 0-0-4-0-4 ~ ~13 ~
# ステージが最後まで進んだら停止させる
execute as 0-0-4-0-4 at @s if block ~ ~ ~ minecraft:air run schedule clear tusb_remake:athletic/speed_run/schedule
# エフェクトかけなおし
effect clear @a[x=-538,y=54,z=1273,dx=46,dy=44,dz=62] minecraft:speed
effect give @a[x=-538,y=54,z=1273,dx=46,dy=44,dz=62] minecraft:speed 10 12
playsound minecraft:block.note_block.harp master @a[x=-538,y=54,z=1273,dx=46,dy=44,dz=62] -515.0 120 1313.0 0.1 1.68 1
