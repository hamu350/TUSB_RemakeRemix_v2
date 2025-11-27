#> tusb_remake:player/skill/show/display
# スキル名称の表示
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data remove storage tusb_remake: skill_name
execute if entity @s[scores={ShowSkill=1000..1999}] run function tusb_remake:player/skill/show/knight
execute if entity @s[scores={ShowSkill=2000..2999}] run function tusb_remake:player/skill/show/ninja
execute if entity @s[scores={ShowSkill=3000..3999}] run function tusb_remake:player/skill/show/archer
execute if entity @s[scores={ShowSkill=4000..4999}] run function tusb_remake:player/skill/show/white_mage
execute if entity @s[scores={ShowSkill=5000..5999}] run function tusb_remake:player/skill/show/black_mage
execute if entity @s[scores={ShowSkill=6000..6999}] run function tusb_remake:player/skill/show/summoner
scoreboard players reset @s ShowSkill

execute unless data storage tusb_remake: skill_name run tellraw @s ["",{"nbt":"prefix","storage":"tusb_remake:","interpret":true},{"text":"未設定","color":"yellow"}]
execute if data storage tusb_remake: skill_name run tellraw @s ["",{"nbt":"prefix","storage":"tusb_remake:","interpret":true},{"nbt":"skill_name","storage":"tusb_remake:"}]
