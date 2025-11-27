#> tusb_remake:athletic/hell_climb/schedule
# ヘルクライム
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## スケジュール
execute in minecraft:the_nether as @a[x=-363,y=57,z=1282,dx=21,dy=100,dz=19] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1.44 1
## 誰も人がいなかったら終了位置に
execute in minecraft:the_nether unless entity @a[x=-363,y=57,z=1282,dx=21,dy=100,dz=19] run tp 0-0-4-0-1 -337 16.5 1309
## 足元の砂を消す
execute as 0-0-4-0-1 at @s positioned ~1 ~ ~1 run clone ~ 16 ~ ~3 80 ~3 -354 57 1297 filtered minecraft:air normal
## 砂を落とす
execute as 0-0-4-0-1 at @s positioned ~1 ~ ~1 run clone ~ 102 ~ ~3 116 ~3 -354 143 1297 filtered #minecraft:sand normal
## 改行
execute as 0-0-4-0-1 at @s positioned ~ ~ ~ if block ~ ~ ~ minecraft:magenta_stained_glass run tp 0-0-4-0-1 -325 ~ ~-6
## 終わっていなければ再度スケジュール
execute as 0-0-4-0-1 at @s positioned ~ ~ ~ if block ~ ~ ~ minecraft:lime_stained_glass run schedule function tusb_remake:athletic/hell_climb/schedule 7s
## 終わっていなければ進める
execute as 0-0-4-0-1 at @s positioned ~ ~ ~ if block ~ ~ ~ minecraft:lime_stained_glass run tp 0-0-4-0-1 ~-6 ~ ~

## 頭上の砂が落ち始めたらデータを修正
schedule function tusb_remake:athletic/hell_climb/schedule2 2t
