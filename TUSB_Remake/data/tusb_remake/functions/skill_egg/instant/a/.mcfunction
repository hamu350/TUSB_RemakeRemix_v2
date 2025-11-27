#> tusb_remake:skill_egg/instant/a/
# ルビーの即時スキルを使う
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute at @e[distance=..7,tag=SkillEgg,tag=Instant,tag=Ruby,limit=1] run function tusb_remake:skill_egg/instant/a/invoke

advancement revoke @s only tusb_remake:skill_egg/instant/a
