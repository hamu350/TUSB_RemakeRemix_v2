#> tusb_remake:skill/summoner/fill/spell
# フィールを詠唱(620X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

###
scoreboard players operation @s ActivatedSkill = @s CurrentMode
scoreboard players operation @s MPConsumption = @s CurrentModeCost
### MPチェック
function tusb_remake:skill/check_mp/

scoreboard players operation _ ActivatedSkill = @s ActivatedSkill
execute if score _ ActivatedSkill matches 6200..6209 if entity @s[gamemode=adventure] run function tusb_remake:skill/summoner/fill/adventure
execute if score _ ActivatedSkill matches 6200..6209 run function tusb_remake:skill/summoner/fill/cast
