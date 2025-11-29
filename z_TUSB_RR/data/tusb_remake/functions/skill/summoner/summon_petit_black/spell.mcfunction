#> tusb_remake:skill/summoner/summon_petit_black/spell
# ぷちブラックを召喚(630X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

###
scoreboard players operation @s ActivatedSkill = @s CurrentMode
scoreboard players operation @s MPConsumption = @s CurrentModeCost
### MPチェック
function tusb_remake:skill/check_mp/

scoreboard players operation _ ActivatedSkill = @s ActivatedSkill
execute if score _ ActivatedSkill matches 6300..6309 run function tusb_remake:skill/summoner/summon_petit_black/cast
