#> tusb_remake:gimmic/clock/ring
# 時計島うるさい
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# 時計鳴らす
execute as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~100 ~ 1 1.414 1
# 朝にする
time set 23400

# カウントダウン
execute store result storage tusb_remake: clock_ring_time int 0.9999999999 run data get storage tusb_remake: clock_ring_time
# 止まるまで繰り返し
execute unless data storage tusb_remake: {clock_ring_time:0} in minecraft:overworld run schedule function tusb_remake:gimmic/clock/ring 1t
