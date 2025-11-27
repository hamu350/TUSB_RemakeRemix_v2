#> tusb_remake:skill/change/get_skill_level
# レベルチェック
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 習得レベルを満たしていたらスキルのレベル+1
execute store result score _ Level run data get storage tusb_remake: change_skill.level[-1]
data remove storage tusb_remake: change_skill.level[-1]
execute if score @s Level >= _ Level run scoreboard players add _ TUSB 1

### まだ判定するレベルが残っていたら繰り返し
execute if data storage tusb_remake: change_skill.level[-1] run function tusb_remake:skill/change/get_skill_level
