#> anywhere:run_in_vanilla
# ストレージの内容に合わせて場所を変えるよ
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

## 基本の書き方
# execute if data storage anywhere: at{Dimension:"<dimension:name>"} in <dimension:name> run function anywhere:function

## ディメンションがない場合
execute unless data storage anywhere: at.Dimension run function anywhere:function
## オーバーワールドの場合
execute if data storage anywhere: at{Dimension:"minecraft:overworld"} in minecraft:overworld run function anywhere:function
execute if data storage anywhere: at{Dimension:"overworld"} in minecraft:overworld run function anywhere:function
## ネザーの場合
execute if data storage anywhere: at{Dimension:"minecraft:the_nether"} in minecraft:the_nether run function anywhere:function
execute if data storage anywhere: at{Dimension:"the_nether"} in minecraft:the_nether run function anywhere:function
## エンドの場合
execute if data storage anywhere: at{Dimension:"minecraft:the_end"} in minecraft:the_end run function anywhere:function
execute if data storage anywhere: at{Dimension:"the_end"} in minecraft:the_end run function anywhere:function
