#> tusb_remake:gimmic/clock/clone
# 時計島変身
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### チャンク読み込み
execute positioned 35 0 6 positioned ~00 ~ ~00 run function tusb_remake:system/load_chunk
execute positioned 35 0 6 positioned ~24 ~ ~00 run function tusb_remake:system/load_chunk
execute positioned 35 0 6 positioned ~00 ~ ~24 run function tusb_remake:system/load_chunk
execute positioned 35 0 6 positioned ~24 ~ ~24 run function tusb_remake:system/load_chunk
execute positioned 4000 255 4000 positioned ~00 ~ ~00 run function tusb_remake:system/load_chunk
execute positioned 4000 255 4000 positioned ~16 ~ ~00 run function tusb_remake:system/load_chunk
execute positioned 4000 255 4000 positioned ~00 ~ ~16 run function tusb_remake:system/load_chunk
execute positioned 4000 255 4000 positioned ~16 ~ ~16 run function tusb_remake:system/load_chunk
### クローン
clone ~ ~ ~ ~22 ~22 ~22 36 1 7

### 中のコマブロ修正
### 北向きのコマブロを修正
fill 35 0 6 59 24 30 minecraft:crying_obsidian replace minecraft:command_block[facing=north]{auto:true}
fill 35 0 6 59 24 30 minecraft:command_block[facing=north]{auto:true,Command:"execute positioned ~ ~-0.4999 ~1 run function tusb_remake:gimmic/clock/set_spawner"} replace minecraft:crying_obsidian
### 南向きのコマブロを修正
fill 35 0 6 59 24 30 minecraft:crying_obsidian replace minecraft:command_block[facing=south]{auto:true}
fill 35 0 6 59 24 30 minecraft:command_block[facing=south]{auto:true,Command:"execute positioned ~ ~-0.4999 ~-1 run function tusb_remake:gimmic/clock/set_spawner"} replace minecraft:crying_obsidian
### 西向きのコマブロを修正
fill 35 0 6 59 24 30 minecraft:crying_obsidian replace minecraft:command_block[facing=west]{auto:true}
fill 35 0 6 59 24 30 minecraft:command_block[facing=west]{auto:true,Command:"execute positioned ~1 ~-0.4999 ~ run function tusb_remake:gimmic/clock/set_spawner"} replace minecraft:crying_obsidian
### 東向きのコマブロを修正
fill 35 0 6 59 24 30 minecraft:crying_obsidian replace minecraft:command_block[facing=east]{auto:true}
fill 35 0 6 59 24 30 minecraft:command_block[facing=east]{auto:true,Command:"execute positioned ~-1 ~-0.4999 ~ run function tusb_remake:gimmic/clock/set_spawner"} replace minecraft:crying_obsidian

### 北向きのコマブロを修正
fill 35 0 6 59 24 30 minecraft:crying_obsidian replace minecraft:chain_command_block[facing=north]{auto:true}
fill 35 0 6 59 24 30 minecraft:chain_command_block[facing=north]{auto:true,Command:"fill ~ ~ ~1 ~ ~ ~ minecraft:air"} replace minecraft:crying_obsidian
### 南向きのコマブロを修正
fill 35 0 6 59 24 30 minecraft:crying_obsidian replace minecraft:chain_command_block[facing=south]{auto:true}
fill 35 0 6 59 24 30 minecraft:chain_command_block[facing=south]{auto:true,Command:"fill ~ ~ ~-1 ~ ~ ~ minecraft:air"} replace minecraft:crying_obsidian
### 西向きのコマブロを修正
fill 35 0 6 59 24 30 minecraft:crying_obsidian replace minecraft:chain_command_block[facing=west]{auto:true}
fill 35 0 6 59 24 30 minecraft:chain_command_block[facing=west]{auto:true,Command:"fill ~1 ~ ~ ~ ~ ~ minecraft:air"} replace minecraft:crying_obsidian
### 東向きのコマブロを修正
fill 35 0 6 59 24 30 minecraft:crying_obsidian replace minecraft:chain_command_block[facing=east]{auto:true}
fill 35 0 6 59 24 30 minecraft:chain_command_block[facing=east]{auto:true,Command:"fill ~-1 ~ ~ ~ ~ ~ minecraft:air"} replace minecraft:crying_obsidian

### 北向きのコマブロを修正
fill 35 0 6 59 24 30 minecraft:crying_obsidian replace minecraft:command_block[facing=north]{auto:false}
fill 35 0 6 59 24 30 minecraft:command_block[facing=north]{auto:false,Command:"function tusb_remake:gimmic/clock/stop"} replace minecraft:crying_obsidian
### 南向きのコマブロを修正
fill 35 0 6 59 24 30 minecraft:crying_obsidian replace minecraft:command_block[facing=south]{auto:false}
fill 35 0 6 59 24 30 minecraft:command_block[facing=south]{auto:false,Command:"function tusb_remake:gimmic/clock/stop"} replace minecraft:crying_obsidian
### 西向きのコマブロを修正
fill 35 0 6 59 24 30 minecraft:crying_obsidian replace minecraft:command_block[facing=west]{auto:false}
fill 35 0 6 59 24 30 minecraft:command_block[facing=west]{auto:false,Command:"function tusb_remake:gimmic/clock/stop"} replace minecraft:crying_obsidian
### 東向きのコマブロを修正
fill 35 0 6 59 24 30 minecraft:crying_obsidian replace minecraft:command_block[facing=east]{auto:false}
fill 35 0 6 59 24 30 minecraft:command_block[facing=east]{auto:false,Command:"function tusb_remake:gimmic/clock/stop"} replace minecraft:crying_obsidian

### 時計島鳴らすよ
data modify storage tusb_remake: clock_ring_time set value 180
execute in minecraft:overworld run schedule function tusb_remake:gimmic/clock/ring 1t
