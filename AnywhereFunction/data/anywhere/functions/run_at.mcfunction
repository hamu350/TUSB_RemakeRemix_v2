#> anywhere:run_at
# ストレージの内容に合わせて場所を変えるよ
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

## 向きデータがない場合は向きを実行地点に合わせる
execute unless data storage anywhere: at.Rotation run tp @s ~ ~ ~ ~ ~
## 向きデータがある場合は向きを補正
execute if data storage anywhere: at.Rotation run data modify entity @s Rotation set from storage anywhere: at.Rotation
## 場所データがある場合は場所を補正
execute if data storage anywhere: at.Pos run data modify entity @s Pos set from storage anywhere: at.Pos
## 場所は@sで取れるので自分を消しておく
kill @s

## ディメンションを切り替えてコマンド実行
function #anywhere:dimensions
