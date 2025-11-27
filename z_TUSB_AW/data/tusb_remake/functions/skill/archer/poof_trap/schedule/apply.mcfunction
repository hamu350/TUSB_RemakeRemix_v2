#> tusb_remake:skill/archer/poof_trap/schedule/apply
### ニフラムトラップの効果をかける
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 確認は一度きり
tag @s remove Poofable

### 裸の敵だったら
scoreboard players set _ TUSB 0
execute store result score _ TUSB if data entity @s ArmorItems[].Count
execute if score _ TUSB matches 0 run data modify entity @s Health set value 0f
