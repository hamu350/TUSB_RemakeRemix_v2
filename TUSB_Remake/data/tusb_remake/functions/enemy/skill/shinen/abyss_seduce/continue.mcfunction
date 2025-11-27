#> tusb_remake:enemy/skill/shinen/abyss_seduce/continue
# 深淵様のスキル
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 効果をかける
effect give @s minecraft:jump_boost 2 248 true
### 効果時間を減らす
scoreboard players remove @s AbyssSeduce 1
### 効果切れ
execute if score @s AbyssSeduce matches ..0 run scoreboard players reset @s AbyssSeduce
