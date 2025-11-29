#> tusb_remake:player/skill/learn/
# スキル習得
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute if entity @s[scores={Job=1}] run function tusb_remake:player/skill/learn/knight
execute if entity @s[scores={Job=2}] run function tusb_remake:player/skill/learn/ninja
execute if entity @s[scores={Job=3}] run function tusb_remake:player/skill/learn/archer
execute if entity @s[scores={Job=4}] run function tusb_remake:player/skill/learn/white_mage
execute if entity @s[scores={Job=5}] run function tusb_remake:player/skill/learn/black_mage
execute if entity @s[scores={Job=6}] run function tusb_remake:player/skill/learn/summoner

tellraw @s[scores={ShowSkill=0..}] {"text":"新しいスキルを覚えた！"}
### 覚えたスキル名の表示
execute if score @s ShowSkill matches 0.. run function tusb_remake:player/skill/show/
