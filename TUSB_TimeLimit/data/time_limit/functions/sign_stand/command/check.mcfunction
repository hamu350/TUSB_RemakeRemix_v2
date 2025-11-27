#> time_limit:sign_stand/command/check
# 看板との会話処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 設置されたばかりかどうかをチェック(trueなら古い)
data modify storage tusb_remake: motion_y set value 0d
execute store result storage tusb_remake: motion_y byte 1 run data modify storage tusb_remake: motion_y set from entity @s Motion[1]
execute if data storage tusb_remake: {motion_y:true} run function time_limit:sign_stand/command/error/old

### オーバーワールド限定かどうかをチェック
execute if entity @s[tag=TL_SignStand,tag=OverOnly,predicate=!tusb_remake:area/overworld] run function time_limit:sign_stand/command/error/warped

### 土台かスポナーを設置する空間がなければエラー
execute if entity @s[tag=TL_SignStand] unless block ~ ~ ~ #tusb_remake:accept_sign run function time_limit:sign_stand/command/error/shrunk
### 看板を設置する空間がなければエラー
execute if entity @s[tag=TL_SignStand,tag=!TL_SpawnerStand] unless block ~ ~1 ~ #tusb_remake:accept_sign run function time_limit:sign_stand/command/error/shrunk

### 有効な印板なら設置
execute if entity @s[tag=TL_SignStand] at @s run function time_limit:sign_stand/command/sign_stand

kill @s

# 変更点: tagの名称変更とpath変更
