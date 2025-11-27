#> tusb_remake:area/portal/close
# ワープポータル閉じる
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

forceload add ~-1 ~-1 ~3 ~3
### メッセージ
execute if block ~ ~ ~ minecraft:air run tellraw @a [{"translate":"ワープクリスタル【%1$s】が閉じた。","color":"aqua","with":[{"nbt":"portal_name","storage":"tusb_remake:"}]}]
### 一旦空気を確保
# fill ~-1 ~1 ~1 ~3 ~2 ~1 minecraft:air
fill ~-1 ~1 ~-1 ~3 ~2 ~3 minecraft:air replace minecraft:vine
### バリアを設置
fill ~ ~ ~ ~2 ~3 ~2 minecraft:barrier replace minecraft:air
### ツタを並べる
fill ~-1 ~1 ~1 ~3 ~2 ~1 minecraft:vine[north=true,east=true,west=true,south=true,up=true] replace minecraft:air
fill ~1 ~1 ~-1 ~1 ~2 ~3 minecraft:vine[north=true,east=true,west=true,south=true,up=true] replace minecraft:air
### EGWを設置
# fill ~1 ~1 ~1 ~1 ~2 ~1 minecraft:end_gateway replace

forceload remove ~-1 ~-1 ~3 ~3
