#> world_manager:event/rank/
# イベントモブ召喚
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

tag @s remove CauseEvent

### 低確率で占いを外す
execute if predicate lib:random/event run function world_manager:event/rank/roll

# TUSB RR
# execute if score @s EventRank matches ..-1 if score @s ChooseEvent matches 1 run function world_manager:event/rank/none
# execute if score @s EventRank matches 0..9 if score @s ChooseEvent matches 1 run function world_manager:event/rank/nanika
# execute if score @s EventRank matches 10..19 if score @s ChooseEvent matches 1 run function world_manager:event/rank/breath
# execute if score @s EventRank matches 20..29 if score @s ChooseEvent matches 1 run function world_manager:event/rank/shadow
# execute if score @s EventRank matches 30..39 if score @s ChooseEvent matches 1 run function world_manager:event/rank/meal
# execute if score @s EventRank matches 40..49 if score @s ChooseEvent matches 1 run function world_manager:event/rank/abyss
# execute if score @s EventRank matches 50..59 if score @s ChooseEvent matches 1 run function world_manager:event/rank/sat
# execute if score @s EventRank matches 60..69 if score @s ChooseEvent matches 1 run function world_manager:event/rank/rare
# execute if score @s EventRank matches 70..79 if score @s ChooseEvent matches 1 run function world_manager:event/rank/supply
# execute if score @s EventRank matches 80..89 if score @s ChooseEvent matches 1 run function world_manager:event/rank/servant
# execute if score @s EventRank matches 90..99 if score @s ChooseEvent matches 1 run function world_manager:event/rank/gift

### 次のイベントが何になるか🎲しちゃう！！
## 0 - 99
function world_manager:event/rank/roll
