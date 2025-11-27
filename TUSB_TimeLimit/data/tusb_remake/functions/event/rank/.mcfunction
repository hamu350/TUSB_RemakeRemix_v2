#> tusb_remake:event/rank/
# イベントモブ召喚
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

tag @s remove CauseEvent

### 低確率で占いを外す
execute if predicate tusb_remake:random/event run function tusb_remake:event/rank/roll

# TUSB origin
execute if score @s EventRank matches ..-1 if score @s ChooseEvent matches 1 run function tusb_remake:event/rank/none
execute if score @s EventRank matches 0..9 if score @s ChooseEvent matches 1 run function tusb_remake:event/rank/nanika
execute if score @s EventRank matches 10..19 if score @s ChooseEvent matches 1 run function tusb_remake:event/rank/breath
execute if score @s EventRank matches 20..29 if score @s ChooseEvent matches 1 run function tusb_remake:event/rank/shadow
execute if score @s EventRank matches 30..39 if score @s ChooseEvent matches 1 run function tusb_remake:event/rank/meal
execute if score @s EventRank matches 40..49 if score @s ChooseEvent matches 1 run function tusb_remake:event/rank/abyss
execute if score @s EventRank matches 50..59 if score @s ChooseEvent matches 1 run function tusb_remake:event/rank/sat
execute if score @s EventRank matches 60..69 if score @s ChooseEvent matches 1 run function tusb_remake:event/rank/rare
execute if score @s EventRank matches 70..79 if score @s ChooseEvent matches 1 run function tusb_remake:event/rank/supply
execute if score @s EventRank matches 80..89 if score @s ChooseEvent matches 1 run function tusb_remake:event/rank/servant
execute if score @s EventRank matches 90..99 if score @s ChooseEvent matches 1 run function tusb_remake:event/rank/gift


# TLE

execute if score @s EventRank matches ..-1 if score @s ChooseEvent matches 2 run function tusb_remake:event/rank/none
execute if score @s EventRank matches 0..9 if score @s ChooseEvent matches 2 run function tusb_remake:event/rank/tle_addition/acceralator
execute if score @s EventRank matches 10..19 if score @s ChooseEvent matches 2 run function tusb_remake:event/rank/tle_addition/lost_animal
execute if score @s EventRank matches 20..29 if score @s ChooseEvent matches 2 run function tusb_remake:event/rank/tle_addition/pandemic
execute if score @s EventRank matches 30..39 if score @s ChooseEvent matches 2 run function tusb_remake:event/rank/tle_addition/hells_emissary
execute if score @s EventRank matches 40..49 if score @s ChooseEvent matches 2 run function tusb_remake:event/rank/tle_addition/dimensional_wanderer
execute if score @s EventRank matches 50..59 if score @s ChooseEvent matches 2 run function tusb_remake:event/rank/tle_addition/time_bomb
execute if score @s EventRank matches 60..69 if score @s ChooseEvent matches 2 run function tusb_remake:event/rank/tle_addition/legends_of_exp
execute if score @s EventRank matches 70..79 if score @s ChooseEvent matches 2 run function tusb_remake:event/rank/tle_addition/enhance_raid
execute if score @s EventRank matches 80..89 if score @s ChooseEvent matches 2 run function tusb_remake:event/rank/tle_addition/warden
execute if score @s EventRank matches 90..99 if score @s ChooseEvent matches 2 run function tusb_remake:event/rank/tle_addition/today_weather_is_tnt


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





# v12Rの仕様だと5%で攻略度関係なく0~99がロールされて
# 95%は攻略数*2+乱数(0~99)-100で計算がされている

# 5島で好敵手が
# 10島でかぜ
# 15島でスピリツア
# 20で動物
# 25で深淵
# 30でSAT
# 35でほきゅぶ
# 40で4騎士
# 45で経験値シュルカーが攻略度に応じて出現するようになる

# TLE追加嫌な予感