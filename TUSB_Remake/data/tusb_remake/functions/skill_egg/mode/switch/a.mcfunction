#> tusb_remake:skill_egg/mode/switch/a
# ルビーにチェンジ
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

tellraw @s {"text":"ルビーモードにチェンジ！","color":"red","bold":true}	 
playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1.42 0
scoreboard players operation @s CurrentMode = @s ModeSkillA
scoreboard players operation @s CurrentModeCost = @s ModeCostA
