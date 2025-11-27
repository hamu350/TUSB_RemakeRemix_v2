#> time_limit:sign_stand/command/sign
# 看板を設置する
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# 検証の結果進捗から参考してる場合は同名親ファイルからでしか実行できない説が濃厚となりました。
# つまりどういうことかというと、tusb_remakeの方で参照してる印判アマスタplace進捗のrewardで実行されるfunctionは
# functionをまたいでも同名親ファイル、TUSB_Remakeの方を優先度指定を無視して参照するという可能性がある。
# こっちのdatapackの優先度を上げてるにも関わらず同名同pathで実行されないのはこれが理由の可能性がある。
# (証拠としてremakeの方のファイル消したら普通に実行されたので。)
# なんで別ファイル実行ですw
# 本家TUSBから持ってきた部分
execute if entity @s[tag=TL_SignStand] run fill ~ ~ ~ ~ ~ ~ minecraft:white_wool replace #tusb_remake:accept_sign
## cond
execute if entity @s[tag=PermanentStand] run fill ~ ~ ~ ~ ~ ~ minecraft:end_stone_bricks replace #tusb_remake:accept_sign
execute if entity @s[tag=TL_SignStand,y_rotation=0] positioned ~ ~1 ~ run setblock ~ ~ ~ minecraft:birch_sign[rotation=0] keep
execute if entity @s[tag=TL_SignStand,y_rotation=45] positioned ~ ~1 ~ run setblock ~ ~ ~ minecraft:birch_sign[rotation=2] keep
execute if entity @s[tag=TL_SignStand,y_rotation=90] positioned ~ ~1 ~ run setblock ~ ~ ~ minecraft:birch_sign[rotation=4] keep
execute if entity @s[tag=TL_SignStand,y_rotation=135] positioned ~ ~1 ~ run setblock ~ ~ ~ minecraft:birch_sign[rotation=6] keep
execute if entity @s[tag=TL_SignStand,y_rotation=180] positioned ~ ~1 ~ run setblock ~ ~ ~ minecraft:birch_sign[rotation=8] keep
execute if entity @s[tag=TL_SignStand,y_rotation=225] positioned ~ ~1 ~ run setblock ~ ~ ~ minecraft:birch_sign[rotation=10] keep
execute if entity @s[tag=TL_SignStand,y_rotation=270] positioned ~ ~1 ~ run setblock ~ ~ ~ minecraft:birch_sign[rotation=12] keep
execute if entity @s[tag=TL_SignStand,y_rotation=315] positioned ~ ~1 ~ run setblock ~ ~ ~ minecraft:birch_sign[rotation=14] keep
##########
# エンパ
execute if entity @s[tag=PearlTrader] positioned ~ ~1 ~ run data merge block ~ ~ ~ {Text1:'{"text":"トラップチェスト8","color":"#c39143","bold":true,"clickEvent":{"action":"run_command","value":"/function time_limit:sign_stand/trade/pearl_trade"}}',Text2:'{"text":"かまど8","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":""}}',Text3:'{"text":" ⥥ 取引 ⥥","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":""}}',Text4:'{"text":"エンパ16","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":""}}'}
# お楽しみ
execute if entity @s[tag=FunChestTrader] positioned ~ ~1 ~ run data merge block ~ ~ ~ {Text1:'{"text":"エメラルド55","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function time_limit:sign_stand/trade/funchest_trade"}}',Text2:'{"text":"作業台6","color":"#c39143","bold":true,"clickEvent":{"action":"run_command","value":""}}',Text3:'{"text":" ⥥ 取引 ⥥","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":""}}',Text4:'{"text":"お楽しみチェスト1","color":"green","bold":true,"clickEvent":{"action":"run_command","value":""}}'}
# トラップチェスト64
execute if entity @s[tag=TChestTrader] positioned ~ ~1 ~ run data merge block ~ ~ ~ {Text1:'{"text":"チェスト64","color":"#c39143","bold":true,"clickEvent":{"action":"run_command","value":"/function time_limit:sign_stand/trade/trapped_chest_trade"}}',Text2:'{"text":"エメラルド64","color":"green","bold":true,"clickEvent":{"action":"run_command","value":""}}',Text3:'{"text":" ⥥ 取引 ⥥","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":""}}',Text4:'{"text":"トラップチェスト64","color":"#c39143","bold":true,"clickEvent":{"action":"run_command","value":""}}'}
# チェスト32
execute if entity @s[tag=ChestTrader] positioned ~ ~1 ~ run data merge block ~ ~ ~ {Text1:'{"text":"原木64","color":"#734e30","bold":true,"clickEvent":{"action":"run_command","value":"/execute store result score @s TUSB run clear @s #time_limit:woods 0"}}',Text2:'{"text":" ⥥ 交換 ⥥","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/clear @s[scores={TUSB=64..}] #time_limit:woods 64"}}',Text3:'{"text":" ⥥ 取引 ⥥","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score @s TUSB matches 64.. at @s run give @s minecraft:chest 32"}}',Text4:'{"text":"チェスト32","color":"#c39143","bold":true,"clickEvent":{"action":"run_command","value":""}}'}
# かまど8
execute if entity @s[tag=FurnaceTrader] positioned ~ ~1 ~ run data merge block ~ ~ ~ {Text1:'{"text":"丸石64","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/execute store result score @s TUSB run clear @s cobblestone 0"}}',Text2:'{"text":" ⥥ 交換 ⥥","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/clear @s[scores={TUSB=64..}] cobblestone 64"}}',Text3:'{"text":" ⥥ 取引 ⥥","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score @s TUSB matches 64.. at @s run give @s minecraft:furnace 8"}}',Text4:'{"text":"かまど8","color":"black","bold":true,"clickEvent":{"action":"run_command","value":""}}'}
# 額縁32
execute if entity @s[tag=FrameTrader] positioned ~ ~1 ~ run data merge block ~ ~ ~ {Text1:'{"text":"原木64","color":"#734e30","bold":true,"clickEvent":{"action":"run_command","value":"/execute store result score @s TUSB run clear @s #time_limit:woods 0"}}',Text2:'{"text":" ⥥ 交換 ⥥","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/clear @s[scores={TUSB=64..}] #time_limit:woods 64"}}',Text3:'{"text":" ⥥ 取引 ⥥","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score @s TUSB matches 64.. at @s run give @s minecraft:item_frame 32"}}',Text4:'{"text":"額縁32","color":"#c39143","bold":true,"clickEvent":{"action":"run_command","value":""}}'}
# 作業台64
execute if entity @s[tag=CraftTrader] positioned ~ ~1 ~ run data merge block ~ ~ ~ {Text1:'{"text":"原木64","color":"#734e30","bold":true,"clickEvent":{"action":"run_command","value":"/execute store result score @s TUSB run clear @s #time_limit:woods 0"}}',Text2:'{"text":" ⥥ 交換 ⥥","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/clear @s[scores={TUSB=64..}] #time_limit:woods 64"}}',Text3:'{"text":" ⥥ 取引 ⥥","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score @s TUSB matches 64.. at @s run give @s minecraft:crafting_table 64"}}',Text4:'{"text":"作業台64","color":"#c39143","bold":true,"clickEvent":{"action":"run_command","value":""}}'}
