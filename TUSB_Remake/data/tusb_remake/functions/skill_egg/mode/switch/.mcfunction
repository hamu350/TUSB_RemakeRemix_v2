#> tusb_remake:skill_egg/mode/switch/
# スキルエッグのモードを使った時
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 1 -> 1
execute if score @s ModeState matches 1.. run function tusb_remake:skill_egg/mode/switch/a
## ..0 -> 3
execute unless score @s ModeState matches 1.. run function tusb_remake:skill_egg/mode/switch/b
scoreboard players remove @s ModeState 2

scoreboard players operation @s ShowSkill = @s CurrentMode
function tusb_remake:player/skill/show/

data modify entity @e[distance=..1,tag=SkillEgg,tag=ModeSwitch,limit=1] Health set value 0f
