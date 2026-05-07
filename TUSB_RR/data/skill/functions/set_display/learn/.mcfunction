#> skill:set_display/learn/
# スキル習得
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute if entity @s[scores={Job=1}] run function skill:set_display/learn/knight
execute if entity @s[scores={Job=2}] run function skill:set_display/learn/ninja
execute if entity @s[scores={Job=3}] run function skill:set_display/learn/archer
execute if entity @s[scores={Job=4}] run function skill:set_display/learn/white_mage
execute if entity @s[scores={Job=5}] run function skill:set_display/learn/black_mage
execute if entity @s[scores={Job=6}] run function skill:set_display/learn/summoner

tellraw @s[scores={ShowSkill=0..}] {"text":"新しいスキルを覚えた！"}
### 覚えたスキル名の表示
execute if score @s ShowSkill matches 0.. run function skill:set_display/show/
