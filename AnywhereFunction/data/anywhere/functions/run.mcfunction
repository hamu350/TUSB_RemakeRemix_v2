#> anywhere:run
# ストレージの場所に合わせて実行するよ
# 入力 storage anywhere: at{Pos:[],Rotation:[],Dimension:""}
# 入力 storage anywhere: function:"必須"
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

### 元の対象を記録する
tag @s add AnywhereAs

## 実行地点を取得するためのエンティティ
summon minecraft:marker ~ ~ ~ {Tags:[AnywhereFunction]}
execute as @e[distance=..0.01,type=minecraft:marker,tag=AnywhereFunction,limit=1] run function anywhere:run_at

tag @s remove AnywhereAs
