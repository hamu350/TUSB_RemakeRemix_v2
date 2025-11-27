#> tusb_remake:gimmic/clock/stop
# 時計島からの交易島襲撃を止める
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute in minecraft:overworld positioned -58 23 22 if block ~ ~ ~ minecraft:spawner run execute in minecraft:overworld positioned -58 23 22 if block ~ ~ ~ minecraft:spawner run data merge block ~ ~ ~ {RequiredPlayerRange:0s,Delay:32767s}
execute in minecraft:overworld positioned -58 23 22 if block ~ ~ ~ minecraft:spawner run data remove block ~ ~ ~ SpawnPotentials

execute as @a at @s run playsound minecraft:block.anvil.land master @s ~ ~100 ~ 0.6 1.414 0.6
tellraw @a {"text":"時計が止まった。","color":"gold"}
