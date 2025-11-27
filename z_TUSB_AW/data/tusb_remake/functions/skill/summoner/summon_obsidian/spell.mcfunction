#> tusb_remake:skill/summoner/summon_obsidian/spell
# 黒曜石を召喚(626X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

###
scoreboard players operation @s ActivatedSkill = @s CurrentMode
scoreboard players operation @s MPConsumption = @s CurrentModeCost
### MPチェック
function tusb_remake:skill/check_mp/

scoreboard players operation _ ActivatedSkill = @s ActivatedSkill
execute if score _ ActivatedSkill matches 6260..6269 run function tusb_remake:skill/summoner/summon_obsidian/cast
