#> tusb_remake:player/pick_exp/default/
# 経験値取得処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 経験値を得られるプレイヤーがいた場合、経験値取得メッセージを出す
tag @a[scores={HP=1..,Level=1..}] add ExpTarget
execute if entity @a[distance=..50,tag=ExpTarget,limit=1] run function tusb_remake:player/pick_exp/default/get
### 経験値を得られなかったプレイヤーがいた場合、経験値取得失敗メッセージを出す
execute if entity @a[tag=ExpTarget,limit=1] run function tusb_remake:player/pick_exp/default/not_get

### 死んでいるので経験値を得られないプレイヤーがいた場合、経験値取得失敗メッセージを出す
execute if entity @a[scores={HP=..0,Level=1..},limit=1] run tellraw @a {"translate":"%1$sは生存していないため、経験値を得られなかった。","color":"red","with":[{"selector":"@a[scores={HP=..0,Level=1..}]"}]}

### 無職なので経験値を得られないプレイヤーがいた場合、経験値取得失敗メッセージを出す
execute if entity @a[scores={Level=..0},limit=1] run tellraw @a {"translate":"%1$sはジョブがないため、経験値を得られなかった。","color":"red","with":[{"selector":"@a[scores={Level=..0}]"}]}
