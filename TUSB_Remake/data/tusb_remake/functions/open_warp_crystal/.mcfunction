#> tusb_remake:open_warp_crystal/
## ワープクリスタルを開く
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 地下世界
### キノコの山へのワープクリスタルを開くコマブロ
execute in minecraft:overworld positioned 1050 5 41 if block ~ ~ ~ minecraft:command_block{powered:true} run function tusb_remake:area/portal/underworld/hill/open
### キノコの塔へのワープクリスタルを開くコマブロ
execute in minecraft:overworld positioned 1263 2 209 if block ~ ~ ~ minecraft:command_block{powered:true} run function tusb_remake:area/portal/underworld/tower/open

## テーブルマウンテン
### 地下水路へのワープクリスタルを開くコマブロ
execute in minecraft:overworld positioned 37 58 -2214 if block ~ ~ ~ minecraft:command_block{powered:true} run function tusb_remake:area/portal/table_mountain/waterway_village/open
### 幸福街へのワープクリスタルを開くコマブロ
execute in minecraft:overworld positioned 26 114 -2213 if block ~ ~ ~ minecraft:command_block{powered:true} run function tusb_remake:area/portal/table_mountain/happy_city/open

## クラウディア
### チュートリアルのワープクリスタルを開くコマブロ
# execute positioned ~ ~-1 ~ align xyz if predicate tusb_remake:command/cloudia/tutorial run function tusb_remake:area/portal/cloudia/tutorial/open
execute in minecraft:overworld positioned -1886 115 -187 if block ~ ~ ~ minecraft:command_block{powered:true} run function tusb_remake:area/portal/cloudia/tutorial/open
### クラウディア城へのワープクリスタルを開くコマブロ
execute in minecraft:overworld positioned -2380 75 -131 if block ~ ~ ~ minecraft:command_block{powered:true} run function tusb_remake:area/portal/cloudia/castle/open
### ハーローワークへのワープクリスタルを開くコマブロ
execute in minecraft:overworld positioned -1744 126 -137 if block ~ ~ ~ minecraft:command_block{powered:true} run function tusb_remake:area/portal/cloudia/hello_work/open

### トカルトコルデ
execute in minecraft:overworld positioned 1324 96 1572 if block ~ ~ ~ minecraft:command_block{powered:true} run function tusb_remake:area/portal/tocult_colde/frontier/open
execute in minecraft:overworld positioned 1048 69 2056 if block ~ ~ ~ minecraft:command_block{powered:true} run function tusb_remake:area/portal/tocult_colde/ruruie/open
execute in minecraft:overworld positioned 1381 84 2291 if block ~ ~ ~ minecraft:command_block{powered:true} run function tusb_remake:area/portal/tocult_colde/castle/open
execute in minecraft:overworld positioned 1161 95 1496 if block ~ ~ ~ minecraft:command_block{powered:true} run function tusb_remake:area/portal/tocult_colde/redstone/open
execute in minecraft:overworld positioned 1549 102 1349 if block ~ ~ ~ minecraft:command_block{powered:true} run function tusb_remake:area/portal/tocult_colde/command_block/open
execute in minecraft:overworld positioned 1698 95 1731 if block ~ ~ ~ minecraft:command_block{powered:true} run function tusb_remake:area/portal/tocult_colde/research_site/open
execute in minecraft:overworld positioned 2298 72 1414 if block ~ ~ ~ minecraft:command_block{powered:true} run function tusb_remake:area/portal/tocult_colde/excavation_lower/open
execute in minecraft:overworld positioned 2404 238 1510 if block ~ ~ ~ minecraft:command_block{powered:true} run function tusb_remake:area/portal/tocult_colde/excavation_upper/open
execute in minecraft:overworld positioned 2259 69 1820 if block ~ ~ ~ minecraft:command_block{powered:true} run function tusb_remake:area/portal/tocult_colde/spiral_tower/open
execute in minecraft:overworld positioned 2411 84 2247 if block ~ ~ ~ minecraft:command_block{powered:true} run function tusb_remake:area/portal/tocult_colde/drift_ice/open
execute in minecraft:overworld positioned 1922 68 2390 if block ~ ~ ~ minecraft:command_block{powered:true} run function tusb_remake:area/portal/tocult_colde/sumful/open

## ネザー
### 煉獄 入り口
execute in minecraft:the_nether positioned -101 115 -343 if block ~ ~ ~ minecraft:command_block{powered:true} run function tusb_remake:area/portal/nether/dungeon_entrance/open
## 恐れ断ち切る地
execute in minecraft:the_nether positioned -1858 77 -58 if block ~ ~ ~ minecraft:command_block{powered:true} run function tusb_remake:area/portal/nether/dungeon_down/open
## 迷い断ち切る地
execute in minecraft:the_nether positioned -1937 119 -34 if block ~ ~ ~ minecraft:command_block{powered:true} run function tusb_remake:area/portal/nether/dungeon_up/open

## エンド
execute in minecraft:the_end positioned -673 65 12 if block ~ ~ ~ minecraft:command_block{powered:true} run function tusb_remake:area/portal/the_end/garden/open
execute in minecraft:the_end positioned -1155 147 12 if block ~ ~ ~ minecraft:command_block{powered:true} run function tusb_remake:area/portal/the_end/stairs/open
execute in minecraft:the_end positioned -1416 113 9 if block ~ ~ ~ minecraft:command_block{powered:true} run function tusb_remake:area/portal/the_end/skyblock/open
