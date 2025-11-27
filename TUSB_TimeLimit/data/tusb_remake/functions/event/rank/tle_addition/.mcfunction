#> tusb_remake:event/rank/tle_addition

# TLE式に改変

tag @s remove CauseEvent

### 低確率で占いを外す
execute if predicate tusb_remake:random/event run function tusb_remake:event/rank/roll

execute if score @s EventRank matches ..-1 run function tusb_remake:event/rank/none
execute if score @s EventRank matches 0..9 run function tusb_remake:event/rank/nanika
execute if score @s EventRank matches 10..19 run function tusb_remake:event/rank/breath
execute if score @s EventRank matches 20..29 run function tusb_remake:event/rank/shadow
execute if score @s EventRank matches 30..39 run function tusb_remake:event/rank/meal
execute if score @s EventRank matches 40..49 run function tusb_remake:event/rank/abyss
execute if score @s EventRank matches 50..59 run function tusb_remake:event/rank/sat
execute if score @s EventRank matches 60..69 run function tusb_remake:event/rank/rare
execute if score @s EventRank matches 70..79 run function tusb_remake:event/rank/supply
execute if score @s EventRank matches 80..89 run function tusb_remake:event/rank/servant
execute if score @s EventRank matches 90..99 run function tusb_remake:event/rank/gift

### 次のイベントが何になるか🎲しちゃう！！
## 0 - 99
function tusb_remake:event/rank/roll
## -100 - -1
scoreboard players remove @s EventRank 100
## +攻略率 => -100 - 99
execute store result score _ EventRank run data get storage tusb_remake: conquer.count.total 10000
execute store result storage math: in int 1 run scoreboard players operation _ EventRank /= MaxPortalCount Settings
scoreboard players set _ TUSB 100
scoreboard players operation _ EventRank /= _ TUSB

scoreboard players operation @s EventRank += _ EventRank