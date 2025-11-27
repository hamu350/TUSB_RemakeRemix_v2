#> tusb_remake:gimmic/clock/2
# 時計島第２形態
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 達成率が41~70
### 時計の針襲撃スポナーを修正
execute in minecraft:overworld positioned -58 23 22 if block ~ ~ ~ minecraft:spawner run data merge block ~ ~ ~ {SpawnData:{entity:{id:"minecraft:villager",Health:0f,DeathTime:19s,Passengers:[{id:"minecraft:wither_skeleton",CustomName:'"分針"',DeathLootTable:"usb:entities/clock",Health:100f,Attributes:[{Name:"minecraft:generic.max_health",Base:100d},{Name:"minecraft:generic.movement_speed",Base:0.45d},{Name:"minecraft:generic.attack_damage",Base:12d}],HandItems:[{id:"minecraft:stick",Count:65b}],Passengers:[{id:"minecraft:area_effect_cloud",Duration:100,DurationOnUse:0,Radius:2f,RadiusPerTick:0f,RadiusOnUse:0f,Effects:[{Id:2,Duration:100,Amplifier:2b}]}]}]}}}
execute in minecraft:overworld positioned -58 23 22 if block ~ ~ ~ minecraft:spawner run data merge block ~ ~ ~ {RequiredPlayerRange:32s,Delay:100s}
execute in minecraft:overworld positioned -58 23 22 if block ~ ~ ~ minecraft:spawner run data remove block ~ ~ ~ SpawnPotentials

### 時計島変身
execute in minecraft:overworld positioned 4001 24 4001 run function tusb_remake:gimmic/clock/clone

### 時計島の段階を記録
data modify storage tusb_remake: clock_stage set value 2

# 追加部分

# 演出
worldborder warning distance 20000
execute in minecraft:overworld run schedule function tusb_remake:gimmic/clock/half_tick 10t
# msg
tellraw @a [{"text":"時の流れがおかしくなった気がする！","bold": false,"color": "#FF2A2A"}]
tellraw @a [{"text":"すぐに時の乱れを止めないと...！","bold": false,"color": "#FF2A2A"}]

# 時計島タイマー起動！
scoreboard players set Cloak Changed_Form 1