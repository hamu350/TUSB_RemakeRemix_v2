#> tusb_remake:armor_stand/check
# 看板との会話処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 設置されたばかりかどうかをチェック(trueなら古い)
data modify storage tusb_remake: motion_y set value 0d
execute store result storage tusb_remake: motion_y byte 1 run data modify storage tusb_remake: motion_y set from entity @s Motion[1]
execute if data storage tusb_remake: {motion_y:true} run function tusb_remake:armor_stand/error/old

### オーバーワールド限定かどうかをチェック
execute if entity @s[tag=SignStand,tag=OverOnly,predicate=!tusb_remake:area/overworld] run function tusb_remake:armor_stand/error/warped

### 土台かスポナーを設置する空間がなければエラー
execute if entity @s[tag=SignStand] unless block ~ ~ ~ #tusb_remake:accept_sign run function tusb_remake:armor_stand/error/shrunk
### 看板を設置する空間がなければエラー
execute if entity @s[tag=SignStand,tag=!SpawnerStand] unless block ~ ~1 ~ #tusb_remake:accept_sign run function tusb_remake:armor_stand/error/shrunk

### 有効な印板なら設置
execute if entity @s[tag=SignStand] at @s run function tusb_remake:armor_stand/sign_stand

kill @s
