#> tusb_remake:player/apply_hunger
# 空腹度
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### リメイク：盲目時間を75%に変更
tellraw @s[scores={Hunger=0..3}] [{"text":"どこからか声が聞こえる…。\n「腹が減っては探索できぬぞ。」\n"},{"text":"お腹が少し満たされた。\n","color":"aqua"},{"text":"目の前が真っ暗になった。","color":"light_purple"}]
effect give @s[scores={Hunger=0}] minecraft:blindness 60 0 true
effect give @s[scores={Hunger=1}] minecraft:blindness 45 0 true
effect give @s[scores={Hunger=2}] minecraft:blindness 30 0 true
effect give @s[scores={Hunger=3}] minecraft:blindness 15 0 true

scoreboard players operation @s FoodMax = @s Hunger
scoreboard players set @s[scores={FoodMax=0..3}] FoodMax 4

### 最大HP修正フラグ
function tusb_remake:player/hp/set_max
effect give @s instant_health 1 6 true
scoreboard players enable @s kill

### レイズ中ならレイズの後処理
execute as @s[tag=Raise] at @s run function tusb_remake:skill/white_mage/raise/return

### 生きてる間は空腹度=-1
scoreboard players set @s Hunger -1
