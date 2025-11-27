#> tusb_remake:gimmic/clock/stop
# 時計島からの交易島襲撃を止める
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute in minecraft:overworld positioned -58 23 22 if block ~ ~ ~ minecraft:spawner run execute in minecraft:overworld positioned -58 23 22 if block ~ ~ ~ minecraft:spawner run data merge block ~ ~ ~ {RequiredPlayerRange:0s,Delay:32767s}
execute in minecraft:overworld positioned -58 23 22 if block ~ ~ ~ minecraft:spawner run data remove block ~ ~ ~ SpawnPotentials

execute as @a at @s run playsound minecraft:block.anvil.land master @s ~ ~100 ~ 0.6 1.414 0.6
tellraw @a {"text":"時の乱れが収まったようだ…","color":"#00ff00"}

# 追加部分

# 時計島タイマーストップ
scoreboard players set Cloak Changed_Form 0

# ボスバーの色を戻す
function time_limit:tick/bossbar/bossbar_color

# 戻ってそうな音
execute as @a at @s run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 1
# 演出戻す
worldborder warning distance 0
execute in minecraft:overworld run schedule clear tusb_remake:gimmic/clock/half_tick