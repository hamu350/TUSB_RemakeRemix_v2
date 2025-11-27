#> tusb_remake:job/change/
# 職業変更の処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 今のデータをセーブ
function tusb_remake:job/save/

### 職業変更
## 剣士
execute store result storage tusb_remake: _ int 1 run clear @s minecraft:paper{JobChange:true,Job:1} 0
execute unless data storage tusb_remake: {_:0} run scoreboard players set @s Job 1
## 忍者
execute store result storage tusb_remake: _ int 1 run clear @s minecraft:paper{JobChange:true,Job:2} 0
execute unless data storage tusb_remake: {_:0} run scoreboard players set @s Job 2
## 狩人
execute store result storage tusb_remake: _ int 1 run clear @s minecraft:paper{JobChange:true,Job:3} 0
execute unless data storage tusb_remake: {_:0} run scoreboard players set @s Job 3
## 白魔導士
execute store result storage tusb_remake: _ int 1 run clear @s minecraft:paper{JobChange:true,Job:4} 0
execute unless data storage tusb_remake: {_:0} run scoreboard players set @s Job 4
## 黒魔導士
execute store result storage tusb_remake: _ int 1 run clear @s minecraft:paper{JobChange:true,Job:5} 0
execute unless data storage tusb_remake: {_:0} run scoreboard players set @s Job 5
## 召喚士
execute store result storage tusb_remake: _ int 1 run clear @s minecraft:paper{JobChange:true,Job:6} 0
execute unless data storage tusb_remake: {_:0} run scoreboard players set @s Job 6

clear @s minecraft:paper{JobChange:true}

### 新しい職業のデータをロード
function tusb_remake:job/load/
