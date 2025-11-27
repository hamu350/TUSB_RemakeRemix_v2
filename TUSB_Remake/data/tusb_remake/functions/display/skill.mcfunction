#> tusb_remake:display/skill
# 現在設定しているスキルを表示する
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### モードスキル表示
tellraw @s ["= ",{"text":"モードスキル","bold":true}," ="]
scoreboard players operation @s ShowSkill = @s ModeSkillA
data modify storage tusb_remake: prefix set value '{"text":"・","color":"light_purple"}'
function tusb_remake:player/skill/show/display
scoreboard players operation @s ShowSkill = @s ModeSkillB
data modify storage tusb_remake: prefix set value '{"text":"・","color":"dark_aqua"}'
function tusb_remake:player/skill/show/display

### 即時スキル表示
tellraw @s ["= ",{"text":"サポートアクション","bold":true}," ="]
scoreboard players operation @s ShowSkill = @s InstantSkillA
data modify storage tusb_remake: prefix set value '{"text":"・","color":"light_purple"}'
function tusb_remake:player/skill/show/display
scoreboard players operation @s ShowSkill = @s InstantSkillB
data modify storage tusb_remake: prefix set value '{"text":"・","color":"dark_aqua"}'
function tusb_remake:player/skill/show/display
