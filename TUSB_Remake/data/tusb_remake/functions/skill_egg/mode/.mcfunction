#> tusb_remake:skill_egg/mode/
# スキルエッグのモードを使った時
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute at @e[distance=..7,tag=SkillEgg,tag=ModeSwitch,sort=nearest,limit=1] run function tusb_remake:skill_egg/mode/switch/

advancement revoke @s only tusb_remake:skill_egg/mode
