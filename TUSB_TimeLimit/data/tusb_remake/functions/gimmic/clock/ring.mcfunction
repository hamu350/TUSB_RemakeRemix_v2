#> tusb_remake:gimmic/clock/ring
# 時計島うるさい
### Copyright © 2022 フレイシェル
### This software is released under the MIT License, see LICENSE.

# 時計鳴らす
execute as @a at @s run playsound minecraft:block.anvil.land block @p ~ ~100 ~ 0.5 1.414 0.1
# 朝にする
time set 23400

# カウントダウン
execute store result storage tusb_remake: clock_ring_time int 0.9999999999 run data get storage tusb_remake: clock_ring_time
# 止まるまで繰り返し
execute unless data storage tusb_remake: {clock_ring_time:0} in minecraft:overworld run schedule function tusb_remake:gimmic/clock/ring 1t
