#> tusb_remake:portal/warp/overworld/unlock_tocult/unlock
# トカルトコルデ入り口のゲートを開放する
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 解除の音
playsound minecraft:block.glass.break master @a 203 300 -20 1 1 1
### 氷とバリアを解かす
execute positioned 198 138 -25 run fill ~ ~ ~ ~10 ~8 ~10 minecraft:air replace minecraft:ice
execute positioned 198 138 -25 run fill ~ ~ ~ ~10 ~8 ~10 minecraft:air replace minecraft:barrier
fill 203 145 -20 203 146 -20 minecraft:air
### お知らせ
tellraw @a {"translate":"氷が解けて\n%1$sへ行けるようになった！","color":"aqua","with":[{"text":"トカルトコルデ","bold":true}]}
