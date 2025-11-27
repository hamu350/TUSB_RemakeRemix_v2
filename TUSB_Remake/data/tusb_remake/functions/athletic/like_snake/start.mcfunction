#> tusb_remake:athletic/like_snake/start
# スピードラン開始
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 即時リセット
fill -376 87 1089 -353 78 1112 minecraft:air
kill 0-0-4-0-6
kill 0-0-4-0-7
fill -377 91 1081 -377 91 1081 minecraft:lapis_block replace minecraft:redstone_block
clone -358 49 1088 -356 51 1088 -358 79 1088
playsound entity.wolf.shake master @a[x=-376,y=62,z=1089,dx=23,dy=28,dz=23] -364.0 110.0 1101.0 0.1 0.75 1
title @a[x=-376,y=62,z=1089,dx=23,dy=28,dz=23] times 0 40 20
title @a[x=-376,y=62,z=1089,dx=23,dy=28,dz=23] subtitle {"text":"蛇に乗って進め！"}
title @a[x=-376,y=62,z=1089,dx=23,dy=28,dz=23] title {"text":"ライクスネーク","color":"dark_green"}

### トロッコ１
execute in minecraft:overworld run schedule function tusb_remake:athletic/like_snake/start1 2.0s

### トロッコ２
execute in minecraft:overworld run schedule function tusb_remake:athletic/like_snake/start2 4.5s
