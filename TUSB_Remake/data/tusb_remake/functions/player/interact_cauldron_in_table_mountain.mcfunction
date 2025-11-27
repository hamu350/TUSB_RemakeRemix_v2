#> tusb_remake:player/interact_cauldron_in_table_mountain
# テーブルマウンテンで大釜を使ったとき
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 回路のコマンドを修正するよ！
data merge block 10 113 -2240 {Command:"/fill 10 114 -2236 10 114 -2236 minecraft:water_cauldron[level=3] replace minecraft:water_cauldron[level=2]"}
data merge block 10 113 -2239 {Command:"/fill 10 114 -2236 10 114 -2236 minecraft:water_cauldron[level=2] replace minecraft:water_cauldron[level=1]"}
data merge block 10 113 -2238 {Command:"/fill 10 114 -2236 10 114 -2236 minecraft:water_cauldron[level=1] replace minecraft:cauldron"}

### もしも回路を修正できてなかったら、再びトリガーできるようにしておくよ
execute unless data block 10 113 -2240 {Command:"/fill 10 114 -2236 10 114 -2236 minecraft:water_cauldron[level=3] replace minecraft:water_cauldron[level=2]"} run advancement revoke @s only tusb_remake:player/interact_cauldron_in_table_mountain
