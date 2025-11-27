#> tusb_remake:sign_event/return_from_table/
# テーブルマウンテンの帰還するやつ
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 戻る前の演出
playsound minecraft:entity.ender_dragon.hurt master @a ~ ~ ~ 10 1.9 1
execute at @s run particle minecraft:effect ~ ~ ~ 0.01 1 0.01 0.05 700 force

### 戻った後の演出
tp @s -90 15 54
execute at @s run particle minecraft:effect ~ ~ ~ 0.01 1 0.01 0.05 700 force
