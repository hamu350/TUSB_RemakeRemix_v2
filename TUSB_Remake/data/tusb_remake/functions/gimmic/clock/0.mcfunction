#> tusb_remake:gimmic/clock/0
# 時計島起動前
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 達成率が00~10
execute in minecraft:overworld positioned -58 23 22 if block ~ ~ ~ minecraft:spawner run execute in minecraft:overworld positioned -58 23 22 if block ~ ~ ~ minecraft:spawner run data merge block ~ ~ ~ {RequiredPlayerRange:0s,Delay:32767s}
execute in minecraft:overworld positioned -58 23 22 if block ~ ~ ~ minecraft:spawner run data remove block ~ ~ ~ SpawnPotentials

### 時計島変身
execute in minecraft:overworld positioned 4001 70 4001 run function tusb_remake:gimmic/clock/clone

### 時計島の段階を記録
data modify storage tusb_remake: clock_stage set value 0
