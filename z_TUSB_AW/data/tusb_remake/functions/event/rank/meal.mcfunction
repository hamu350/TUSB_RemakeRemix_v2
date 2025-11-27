#> tusb_remake:event/rank/meal
# イベントモブ召喚
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

me 「…こんな動物いた？」
summon villager ~ ~ ~ {Health:0f,DeathTime:19s,Passengers:[{id:"sheep",CustomName:'"村人のごはん"',CustomNameVisible:true,DeathLootTable:"usb:events/meal/sheep",Tags:[VillagerMeal]},{id:"cow",CustomName:'"村人のごはんじゃない"',CustomNameVisible:true},{id:"pig",CustomName:'"村人のごはんじゃない"',CustomNameVisible:true}]}

## 鮮度をリセット
scoreboard players add @e[tag=VillagerMeal] Freshness 0

tellraw @a {"translate":"* %1$s 「今日のごはんは～♪…に、逃げ出してるぅ～～！！」","with":[{"text":"農業家","color":"dark_green"}]}
