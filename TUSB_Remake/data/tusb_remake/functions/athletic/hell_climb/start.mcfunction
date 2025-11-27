#> tusb_remake:athletic/hell_climb/start
# ヘルクライム
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### スタートの時
execute in minecraft:the_nether run fill -354 57 1297 -351 158 1300 minecraft:air replace #minecraft:sand
execute in minecraft:the_nether run kill @e[x=-354,y=57,z=1297,dx=3,dy=101,dz=3,type=falling_block]
execute in minecraft:the_nether run title @a[x=-363,y=57,z=1282,dx=21,dy=100,dz=19] times 0 50 20
execute in minecraft:the_nether run title @a[x=-363,y=57,z=1282,dx=21,dy=100,dz=19] subtitle {"text":"落ちてくる砂を登れ！"}
execute in minecraft:the_nether run title @a[x=-363,y=57,z=1282,dx=21,dy=100,dz=19] title {"text":"ヘルクライム","color":"red","bold":true}
execute in minecraft:the_nether run playsound entity.elder_guardian.curse master @a[x=-363,y=57,z=1282,dx=21,dy=100,dz=19] -352.0 20.0 1299.0 0.1 0.5 1
execute in minecraft:the_nether run tp 0-0-4-0-1 -331 16.5 1351

## 最初のスケジュール
schedule function tusb_remake:athletic/hell_climb/schedule 7s
